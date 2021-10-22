import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tittam/features/coinlist/data/models/coin_model.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tCoinModel = CoinModel();
  tCoinModel
    ..id = "bitcoin"
    ..symbol = "btc"
    ..name = "Bitcoin"
    ..image =
        "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579"
    ..currentPrice = 62931
    ..marketCap = 1186398379020
    ..marketCapRank = 1
    ..fullyDilutedValuation = 1321681127782
    ..totalVolume = 46203818243
    ..high24H = 66838
    ..low24H = 62179
    ..priceChange24H = -2191.132861998063
    ..priceChangePercentage24H = -3.36467
    ..marketCapChange24H = -49290995191.93579
    ..marketCapChangePercentage24H = -3.98895
    ..circulatingSupply = 18850512
    ..totalSupply = 21000000
    ..maxSupply = 21000000
    ..ath = 67277
    ..athChangePercentage = -6.48045
    ..athDate = DateTime.parse("2021-10-20T14:54:17.702Z")
    ..atl = 67.81
    ..atlChangePercentage = 92685.54577
    ..atlDate = DateTime.parse("2013-07-06T00:00:00.000Z")
    ..lastUpdated = DateTime.parse("2021-10-22T02:29:10.125Z");
  test('should be a subclass of Coin entity', () async {
    expect(tCoinModel, isA<Coin>());
  });
  test(
    'should return a valid model',
    () async {
      final Map<String, dynamic> jsonMap = json.decode(fixture('coin.json'));
      final result = CoinModel().fromJson(jsonMap);
      expect(result, tCoinModel);
    },
  );
  test(
    'should return a string of model',
    () async {
      var expectedString =
          "CoinModel(bitcoin, btc, Bitcoin, https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579, 62931, 1186398379020, 1, 1321681127782, 46203818243, 66838, 62179, -2191.132861998063, -3.36467, -49290995191.93579, -3.98895, 18850512, 21000000, 21000000, 67277, -6.48045, 2021-10-20 14:54:17.702Z, 67.81, 92685.54577, 2013-07-06 00:00:00.000Z, 2021-10-22 02:29:10.125Z)";
      expect(tCoinModel.toString(), expectedString);
    },
  );
}
