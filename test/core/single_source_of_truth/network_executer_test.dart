import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tittam/core/service/api_holder.dart';
import 'package:tittam/core/service/network_connectivity.dart';
import 'package:tittam/core/service/network_creator.dart';
import 'package:tittam/core/single_source_of_truth/network_decoder.dart';
import 'package:tittam/core/single_source_of_truth/network_executer.dart';
import 'package:tittam/features/coinlist/data/models/coin_model.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';

import '../../fixtures/fixture_reader.dart';

class MockNetworkConnectivity extends Mock implements NetworkConnectivity {}

void main() {
  late final NetworkConnectivity networkConnectivity;
  late final NetworkCreator networkCreator;
  late final NetworkDecoder networkDecoder;
  late final NetworkExecuter networkExecuter;
  late final Dio cilent;
  setUpAll(() {
    networkConnectivity = MockNetworkConnectivity();
    cilent = Dio(BaseOptions());
    networkCreator = NetworkCreator(client: cilent);
    networkDecoder = NetworkDecoder();
    networkExecuter = NetworkExecuter(
        debugMode: true,
        networkDecoder: networkDecoder,
        networkCreator: networkCreator,
        networkConnectivity: networkConnectivity);
  });
  group("Network executer", () {
    test('should return serialized list of coin success when execute api call',
        () async {
      final dioAdapter = DioAdapter(dio: cilent);
      dioAdapter.onGet(
        const ApiHolder.fetchListCoin().path,
        (server) => server.reply(200, json.decode(fixture('listcoin.json'))),
      );
      when(() => networkConnectivity.status).thenAnswer((_) async {
        return true;
      });
      final List<dynamic> listJson = json.decode(fixture('listcoin.json'));
      final expectedResult =
          listJson.map((i) => CoinModel().fromJson(i)).toList();
      var result = await networkExecuter.execute<CoinModel, List<Coin>>(
          route: const ApiHolder.fetchListCoin(), responseType: CoinModel());
      result.when(failure: (e) {
        throw e;
      }, success: (data) {
        expect(data, expectedResult);
      });
    });
    test('should return network error when execute api call', () async {
      final dioAdapter = DioAdapter(dio: cilent);
      dioAdapter.onGet(
        const ApiHolder.fetchListCoin().path,
        (server) => server.reply(400, json.decode(fixture('listcoin.json'))),
      );
      when(() => networkConnectivity.status).thenAnswer((_) async {
        return true;
      });
      var result = await networkExecuter.execute<CoinModel, List<Coin>>(
          route: const ApiHolder.fetchListCoin(), responseType: CoinModel());
      result.when(failure: (error) {
        error.when(request: (dioError) {
          expect(dioError, isA<DioError>());
        }, type: (typeError) {
          throw typeError!;
        }, connectivity: (connectionError) {
          throw connectionError!;
        });
      }, success: (data) {
        throw data;
      });
    });
    test('should return type error when execute api call', () async {
      final dioAdapter = DioAdapter(dio: cilent);
      dioAdapter.onGet(
        const ApiHolder.fetchListCoin().path,
        (server) => server.reply(200, json.decode(fixture('coin.json'))),
      );
      when(() => networkConnectivity.status).thenAnswer((_) async {
        return true;
      });
      var result = await networkExecuter.execute<CoinModel, List<Coin>>(
          route: const ApiHolder.fetchListCoin(), responseType: CoinModel());
      result.when(failure: (error) {
        error.when(request: (dioError) {
          throw dioError;
        }, type: (typeError) {
          expect(typeError, startsWith("type"));
        }, connectivity: (connectionError) {
          throw connectionError!;
        });
      }, success: (data) {
        throw data;
      });
    });
    test('should return no internet connection when execute api call',
        () async {
      final dioAdapter = DioAdapter(dio: cilent);
      dioAdapter.onGet(
        const ApiHolder.fetchListCoin().path,
        (server) => server.reply(200, json.decode(fixture('listcoin.json'))),
      );
      when(() => networkConnectivity.status).thenAnswer((_) async {
        return false;
      });
      var result = await networkExecuter.execute<CoinModel, List<Coin>>(
          route: const ApiHolder.fetchListCoin(), responseType: CoinModel());
      result.when(failure: (error) {
        error.when(request: (dioError) {
          throw dioError;
        }, type: (typeError) {
          throw typeError!;
        }, connectivity: (connectionError) {
          expect(connectionError, "No Internet Connection");
        });
      }, success: (data) {
        throw data;
      });
    });
  });
}
