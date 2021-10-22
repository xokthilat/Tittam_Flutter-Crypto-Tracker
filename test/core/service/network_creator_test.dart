import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:tittam/core/service/api_holder.dart';
import 'package:tittam/core/service/network_creator.dart';
import 'package:tittam/core/service/network_options/network_options.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  late final NetworkCreator networkCreator;
  late final Dio cilent;
  setUpAll(() {
    cilent = Dio(BaseOptions());
    networkCreator = NetworkCreator(client: cilent);
  });
  group("network creator", () {
    test('should return success request', () async {
      final dioAdapter = DioAdapter(dio: cilent);
      dioAdapter.onGet(
        const ApiHolder.fetchListCoin().path,
        (server) => server.reply(200, fixture('coin.json')),
      );
      NetworkOptions networkOptions = NetworkOptions(
          onReceiveProgress: (int count, int total) => {});
      var response = await networkCreator.request(
          route: const ApiHolder.fetchListCoin(), options: networkOptions);
      expect(response.statusCode, 200);
      expect(response.data, fixture('coin.json'));
    });
  });
}
