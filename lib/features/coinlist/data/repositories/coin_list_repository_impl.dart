import 'dart:async';
import 'dart:math';

import 'package:rxdart/subjects.dart';
import 'package:tittam/core/service/api_holder.dart';
import 'package:tittam/core/single_source_of_truth/network_executer.dart';
import 'package:tittam/features/coinlist/data/models/coin_model.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';
import 'package:tittam/core/interface/response/result.dart';
import 'package:tittam/core/interface/response/network_error.dart';
import 'package:tittam/features/coinlist/domain/repositories/coin_list_repository.dart';

class CoinListRepositoryImpl implements CoinListRepository {
  final NetworkExecuter networkExecuter;
  CoinListRepositoryImpl({required this.networkExecuter});

  final _coinStreamController = BehaviorSubject<List<Coin>>.seeded(const []);
  Timer? _timer;

  @override
  Future<Result<Stream<List<Coin>>, NetworkError>> getCoinList() async {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) async {
      _fetchCoins();
    });
    return Result.success(_coinStreamController.asBroadcastStream());
  }

  void close() {
    _timer?.cancel();
    _coinStreamController.close();
  }

  Future<void> _fetchCoins() async {
    final random = Random();

    const btcmin = 25000.0;
    const btcmax = 32000.0;
    final randomBtc = btcmin + random.nextDouble() * (btcmax - btcmin);
    const ethmin = 2500.0;
    const ethmax = 3500.0;
    final randomEth = ethmin + random.nextDouble() * (ethmax - ethmin);
    const etcmin = 70.0;
    const etcMax = 80.0;
    final randomEtc = etcmin + random.nextDouble() * (etcMax - etcmin);
    final randomChange =
        random.nextInt(16) - 5; // Generates a random number from -5 to 10
    // Print the random double
    final mockJson = [
      {
        "id": "bitcoin",
        "symbol": "BTC",
        "name": "Bitcoin",
        "image": "https://example.com/bitcoin.png",
        "current_price": randomBtc,
        "market_cap": 900000000000,
        "market_cap_rank": 1,
        "fully_diluted_valuation": null,
        "total_volume": 80000000000,
        "high_24h": 49000.0,
        "low_24h": 47000.0,
        "price_change_24h": 1000.0,
        "price_change_percentage_24h": randomChange,
        "market_cap_change_24h": 10000000000.0,
        "market_cap_change_percentage_24h": 1.1,
        "circulating_supply": 18750000.0,
        "total_supply": 21000000.0,
        "max_supply": 21000000.0,
        "ath": 65000.0,
        "ath_change_percentage": 35.0,
        "ath_date": "2021-04-14T10:00:00Z",
        "atl": 3000.0,
        "atl_change_percentage": 1500.0,
        "atl_date": "2015-01-14T10:00:00Z",
        "last_updated": "2023-09-23T15:30:00Z"
      },
      {
        "id": "ethereum",
        "symbol": "ETH",
        "name": "Ethereum",
        "image": "https://example.com/ethereum.png",
        "current_price": randomEth,
        "market_cap": 400000000000,
        "market_cap_rank": 2,
        "fully_diluted_valuation": null,
        "total_volume": 30000000000,
        "high_24h": 3600.0,
        "low_24h": 3400.0,
        "price_change_24h": 200.0,
        "price_change_percentage_24h": randomChange,
        "market_cap_change_24h": 8000000000.0,
        "market_cap_change_percentage_24h": 2.0,
        "circulating_supply": 115000000.0,
        "total_supply": null,
        "max_supply": null,
        "ath": 4500.0,
        "ath_change_percentage": 28.0,
        "ath_date": "2021-05-10T08:30:00Z",
        "atl": 1000.0,
        "atl_change_percentage": 250.0,
        "atl_date": "2020-03-13T13:45:00Z",
        "last_updated": "2023-09-23T15:30:00Z"
      },
      {
        "id": "ethereum-classic",
        "symbol": "ETC",
        "name": "Ethereum Classic",
        "image": "https://example.com/ethereum-classic.png",
        "current_price": randomEtc,
        "market_cap": 9000000000,
        "market_cap_rank": 25,
        "fully_diluted_valuation": null,
        "total_volume": 700000000,
        "high_24h": 75.0,
        "low_24h": 65.0,
        "price_change_24h": -5.0,
        "price_change_percentage_24h": randomChange,
        "market_cap_change_24h": -1000000000.0,
        "market_cap_change_percentage_24h": -10.0,
        "circulating_supply": 130000000.0,
        "total_supply": 210000000.0,
        "max_supply": null,
        "ath": 200.0,
        "ath_change_percentage": -65.0,
        "ath_date": "2021-02-15T11:15:00Z",
        "atl": 40.0,
        "atl_change_percentage": 75.0,
        "atl_date": "2020-03-18T09:30:00Z",
        "last_updated": "2023-09-23T15:30:00Z"
      }
    ];

    var result = await networkExecuter.execute<CoinModel, List<Coin>>(
        route: const ApiHolder.fetchListCoin(),
        responseType: CoinModel(),
        mockData: mockJson);
    result.when(success: (List<Coin> list) {
      _coinStreamController.add(list);
    }, failure: (NetworkError error) {
      _coinStreamController.addError(error);
    });
  }
}
