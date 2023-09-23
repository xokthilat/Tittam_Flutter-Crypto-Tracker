import 'package:tittam/core/interface/response/network_error.dart';
import 'package:tittam/core/interface/response/result.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';

abstract class CoinListRepository {
  Future<Result<Stream<List<Coin>>, NetworkError>> getCoinList();
}
