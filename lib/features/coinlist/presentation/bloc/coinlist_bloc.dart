import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:tittam/core/interface/response/network_error.dart';
import 'package:tittam/core/usecases/usecase.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';
import 'package:tittam/features/coinlist/domain/usecases/get_coin_list.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_event.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_state.dart';

class CoinlistBloc extends Bloc<CoinlistEvent, CoinlistState> {
  final GetCoinList getCoinList;
  CoinlistBloc({required this.getCoinList})
      : super(const CoinlistState.loading()) {
    on<CoinListFetchCoinList>(_onFetchCoinList);
    on<SelectCoinToLive>(_onSelectCoinToLive);
  }
  bool isFistTime = true;
  Future<void> _onFetchCoinList(
      CoinlistEvent event, Emitter<CoinlistState> emit) async {
    final coinStatus = await getCoinList.call(NoParams());
    await coinStatus.when(
      success: (Stream<List<Coin>> steamCoins) async {
        return await emit.forEach<List<Coin>>(steamCoins, onData: (data) {
          if (data.isEmpty) return const CoinlistState.loading();
          return CoinlistState.content(data); // Emit the state here
        });
      },
      failure: (NetworkError error) {
        emit(CoinlistState.error(error)); // Emit the error state here
      },
    );
  }

  final _channel = const MethodChannel('com.xokthilat.titarm');
  StreamSubscription<CoinlistState>? _streamSubscription;

  String selectedCoinId = "";
  Future<void> _onSelectCoinToLive(
      SelectCoinToLive event, Emitter<CoinlistState> emit) async {
    try {
      final selectedCoin = event.coin;
      selectedCoinId = event.coin.id;
      var currencyFormat = NumberFormat("###,###.0#", "en_US");
      final price = currencyFormat.format((selectedCoin.currentPrice));
      emit(CoinlistState.content(state.maybeWhen(orElse: () {
        return [];
      }, content: (data) {
        return data.map((e) {
          return e.id == selectedCoinId
              ? e.copyWith(isSelected: true)
              : e.copyWith(isSelected: false);
        }).toList();
      })));
      if (isFistTime) {
        await _channel.invokeMethod('startLiveActivity', {
          "price": price,
          "change":
              "${selectedCoin.priceChangePercentage24H.toStringAsFixed(2)} %",
          "name": selectedCoin.name,
          "isPositivePrice":
              selectedCoin.priceChangePercentage24H > 0 ? true : false,
        });
        isFistTime = false;
      }
      _streamSubscription?.cancel();

      _streamSubscription = stream.listen((state) {
        state.maybeWhen(
            content: (data) {
              print(selectedCoinId);
              final updatedCoin =
                  data.where((coin) => coin.id == selectedCoinId).first;
              final updatedPrice =
                  currencyFormat.format((updatedCoin.currentPrice));
              _channel.invokeMethod('updateLiveActivity', {
                "price": updatedPrice,
                "change":
                    "${updatedCoin.priceChangePercentage24H.toStringAsFixed(2)} %",
                "name": updatedCoin.name,
                "isPositivePrice":
                    updatedCoin.priceChangePercentage24H > 0 ? true : false,
              });
            },
            orElse: () {});
      });
    } catch (e) {
      debugPrint("==== PlatformException '${e}' ====");
    }
  }
}
