// ignore_for_file: avoid_print

import 'package:tittam/core/interface/api_client/base_client_generator.dart';
import 'package:tittam/core/interface/models/base_network_model.dart';
import 'package:tittam/core/interface/response/network_error.dart';
import 'package:tittam/core/interface/response/result.dart';
import 'package:tittam/core/service/network_connectivity.dart';
import 'package:tittam/core/service/network_creator.dart';
import 'package:tittam/core/service/network_options/network_options.dart';
import 'network_decoder.dart';
import 'package:dio/dio.dart';

class NetworkExecuter {
  final NetworkConnectivity networkConnectivity;
  final NetworkCreator networkCreator;
  final NetworkDecoder networkDecoder;

  final bool debugMode;
  NetworkExecuter(
      {required this.networkConnectivity,
      required this.networkCreator,
      required this.networkDecoder,
      required this.debugMode});
  Future<Result<K, NetworkError>> execute<T extends BaseNetworkModel, K>(
      {required BaseClientGenerator route,
      required T responseType,
      NetworkOptions? options}) async {
    if (debugMode) print(route.header);

    // Check Network Connectivity
    if (await networkConnectivity.status) {
      try {
        var response =
            await networkCreator.request(route: route, options: options);
        var data = networkDecoder.decode<T, K>(
            response: response, responseType: responseType);
        return Result.success(data);

        // NETWORK ERROR
      } on DioException catch (dioError) {
        if (debugMode) {
          print("$route => ${NetworkError.request(error: dioError)}");
        }
        return Result.failure(NetworkError.request(error: dioError));

        // TYPE ERROR
      } on TypeError catch (e) {
        if (debugMode) {
          print("$route => ${NetworkError.type(error: e.toString())}");
        }
        return Result.failure(NetworkError.type(error: e.toString()));
      }

      // No Internet Connection
    } else {
      if (debugMode) {
        print(
            const NetworkError.connectivity(message: 'No Internet Connection'));
      }
    }
    return const Result.failure(
        NetworkError.connectivity(message: 'No Internet Connection'));
  }
}
