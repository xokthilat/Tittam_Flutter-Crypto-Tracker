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
  @override
  Future<Result<List<Coin>, NetworkError>> getCoinList() {
    var result = networkExecuter.execute<CoinModel, List<Coin>>(
        route: const ApiHolder.fetchListCoin(), responseType: CoinModel());
    return result;
  }
}
