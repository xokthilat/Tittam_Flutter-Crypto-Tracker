import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tittam/core/interface/api_client/base_client_generator.dart';
import 'package:tittam/core/interface/response/network_error.dart';
import 'package:tittam/core/interface/response/result.dart';
import 'package:tittam/core/single_source_of_truth/network_executer.dart';
import 'package:tittam/features/coinlist/data/models/coin_model.dart';
import 'package:tittam/features/coinlist/data/repositories/coin_list_repository_impl.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';

class MockNetworkExecuter extends Mock implements NetworkExecuter {}

class MockBaseClientGenerator extends Mock implements BaseClientGenerator {}

class MockCoinModel extends Mock implements CoinModel {}

void main() {
  late final NetworkExecuter networkExecuter;
  late final CoinListRepositoryImpl coinListRepositoryImpl;
  setUpAll(() {
    networkExecuter = MockNetworkExecuter();
    coinListRepositoryImpl =
        CoinListRepositoryImpl(networkExecuter: networkExecuter);
    registerFallbackValue(MockBaseClientGenerator());
    registerFallbackValue(MockCoinModel());
  });
  group("Coinlist Repository", () {
    var fakeListCoin = [Coin(), Coin()];

    test('Should return success list of coin data when call getcoinlist',
        () async {
      when(() => networkExecuter.execute<CoinModel, List<Coin>>(
              route: any(named: "route"),
              responseType: any(named: "responseType")))
          .thenAnswer((_) async => Result.success(fakeListCoin));

      var result = await coinListRepositoryImpl.getCoinList();

      result.when(success: (data) {
        expect(data, fakeListCoin);
      }, failure: (e) {
        throw e;
      });
    });
    test('Should return failure when call getcoinlist', () async {
      when(() =>
          networkExecuter.execute<CoinModel, List<Coin>>(
              route: any(named: "route"),
              responseType: any(named: "responseType"))).thenAnswer(
          (_) async => const Result.failure(NetworkError.type(error: "error")));

      var result = await coinListRepositoryImpl.getCoinList();
      result.when(success: (data) {
        throw data;
      }, failure: (error) {
        error.maybeWhen(orElse: () {
          throw "error";
        }, type: (typeError) {
          expect(typeError, "error");
        });
      });
    });
  });
}
