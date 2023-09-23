import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tittam/core/interface/response/network_error.dart';
import 'package:tittam/core/interface/response/result.dart';
import 'package:tittam/core/usecases/usecase.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';
import 'package:tittam/features/coinlist/domain/usecases/get_coin_list.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_bloc.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_event.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_state.dart';

class MockGetCoinList extends Mock implements GetCoinList {}

void main() {
  late final GetCoinList getCoinList;
  late final CoinlistBloc coinlistBloc;
  setUpAll(() {
    getCoinList = MockGetCoinList();
    coinlistBloc = CoinlistBloc(getCoinList: getCoinList);

    registerFallbackValue(NoParams());
  });
  var fakeListCoin = [Coin(), Coin()];
  test('inital state should be loading', () {
    expect(coinlistBloc.state, equals(const CoinlistState.loading()));
  });
  group("fetch list of coin", () {
    test(
        'should get data from getcoinlist usecase and emit content state when finish',
        () async {
      when(() => getCoinList.call(any()))
          .thenAnswer((invocation) async => Result.success(fakeListCoin));
      expectLater(
          coinlistBloc.stream, emits(CoinlistState.content(fakeListCoin)));

      coinlistBloc.add(const CoinListFetchCoinList());

      await untilCalled(() => getCoinList.call(any()));
      verify(() => getCoinList.call(NoParams()));
    });
    test(
        'should error when try to get data from getcoinlist usecase and emit error state ',
        () async {
      when(() => getCoinList.call(any())).thenAnswer((invocation) async =>
          const Result.failure(NetworkError.type(error: "error")));
      expectLater(coinlistBloc.stream, emits(const CoinlistState.error(NetworkError.type(error: "error"))));

      coinlistBloc.add(const CoinListFetchCoinList());
    });
  });
}
