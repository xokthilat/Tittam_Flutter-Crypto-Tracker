import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:tittam/core/interface/response/network_error.dart';
import 'package:tittam/core/interface/response/result.dart';
import 'package:tittam/core/usecases/usecase.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';
import 'package:tittam/features/coinlist/domain/usecases/get_coin_list.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_event.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_state.dart';

class CoinlistBloc extends Bloc<CoinlistEvent, CoinlistState> {
  final GetCoinList getCoinList;
  CoinlistBloc({required this.getCoinList})
      : super(const CoinlistState.loading());
  @override
  Stream<CoinlistState> mapEventToState(
    CoinlistEvent event,
  ) =>
      event.when(fetchCoinList: _onFetchCoinList);

  Stream<CoinlistState> _onFetchCoinList() async* {
    Result<List<Coin>, NetworkError> coinStatus =
        await getCoinList.call(NoParams());
    yield coinStatus.when(success: (List<Coin> list) {
      return CoinlistState.content(list);
    }, failure: (NetworkError error) {
      return CoinlistState.error(error);
    });
  }
}
