import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tittam/core/service/network_connectivity.dart';
import 'package:tittam/core/service/network_creator.dart';
import 'package:tittam/core/single_source_of_truth/network_decoder.dart';
import 'package:tittam/core/single_source_of_truth/network_executer.dart';
import 'package:tittam/features/coinlist/data/repositories/coin_list_repository_impl.dart';
import 'package:tittam/features/coinlist/domain/repositories/coin_list_repository.dart';
import 'package:tittam/features/coinlist/domain/usecases/get_coin_list.dart';
import 'package:tittam/features/coinlist/presentation/bloc/coinlist_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => CoinlistBloc(getCoinList: sl()));

  sl.registerLazySingleton(() => GetCoinList(sl()));

  sl.registerLazySingleton<CoinListRepository>(
      () => CoinListRepositoryImpl(networkExecuter: sl()));

  sl.registerLazySingleton(() => NetworkExecuter(
      debugMode: true,
      networkConnectivity: sl(),
      networkCreator: sl(),
      networkDecoder: sl()));
  sl.registerLazySingleton(() => NetworkCreator(client: sl()));
  sl.registerLazySingleton(() => NetworkDecoder());
  sl.registerLazySingleton(() => NetworkConnectivity(connectivity: sl()));
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => Connectivity());
}
