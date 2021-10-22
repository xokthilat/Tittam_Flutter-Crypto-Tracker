import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tittam/core/interface/response/network_error.dart';
import 'package:tittam/core/interface/response/result.dart';
import 'package:tittam/core/usecases/usecase.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';
import 'package:tittam/features/coinlist/domain/repositories/coin_list_repository.dart';
import 'package:tittam/features/coinlist/domain/usecases/get_coin_list.dart';

class MockCoinListRepository extends Mock implements CoinListRepository {}

void main() {
  late final GetCoinList getCoinList;
  late final CoinListRepository coinListRepository;
  setUpAll(() {
    coinListRepository = MockCoinListRepository();
    getCoinList = GetCoinList(coinListRepository);
  });
  var fakeListCoin = [Coin(), Coin()];

  test('should get list of coin from repository', () async {
    //arrange
    when(() => coinListRepository.getCoinList())
        .thenAnswer((_) async => Result.success(fakeListCoin));
    //act
    final result = await getCoinList(NoParams());
    //assert
    verify(() => coinListRepository.getCoinList());

    result.when(failure: (e) {
      throw e;
    }, success: (data) {
      expect(data, equals(fakeListCoin));
    });
    verifyNoMoreInteractions(coinListRepository);
  });
  test('should error when try to get list of coin from repository', () async {
    //arrange
    when(() => coinListRepository.getCoinList()).thenAnswer(
        (_) async => const Result.failure(NetworkError.type(error: "error")));
    //act
    final result = await getCoinList(NoParams());
    //assert
    verify(() => coinListRepository.getCoinList());

    result.when(failure: (error) {
      expect(error, equals(const NetworkError.type(error: "error")));
    }, success: (data) {
      throw data;
    });
    verifyNoMoreInteractions(coinListRepository);
  });
}
