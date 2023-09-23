import 'dart:async';
import 'package:bloc/bloc.dart';
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
  }

  Future<void> _onFetchCoinList(
      CoinlistEvent event, Emitter<CoinlistState> emit) async {
    final coinStatus = await getCoinList.call(NoParams());
    coinStatus.when(success: (List<Coin> list) {
      return emit.call(CoinlistState.content(list));
    }, failure: (NetworkError error) {
      return emit.call(CoinlistState.error(error));
    });
  }
}
