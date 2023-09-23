import 'package:tittam/core/interface/response/result.dart';
import 'package:tittam/core/interface/response/network_error.dart';
import 'package:tittam/core/usecases/usecase.dart';
import 'package:tittam/features/coinlist/domain/entities/coin.dart';
import 'package:tittam/features/coinlist/domain/repositories/coin_list_repository.dart';

class GetCoinList implements UseCase<Stream<List<Coin>>, NoParams> {
  final CoinListRepository coinListRepository;
  GetCoinList(this.coinListRepository);
  @override
  Future<Result<Stream<List<Coin>>, NetworkError>> call(NoParams params) async {
    return await coinListRepository.getCoinList();
  }
}
