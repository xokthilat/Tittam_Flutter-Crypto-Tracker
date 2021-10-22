import 'dart:io';
import 'package:dio/dio.dart';
import 'package:tittam/core/service/network_options/network_options.dart';

import '../interface/api_client/base_client_generator.dart';

class NetworkCreator {
  final Dio client;
  NetworkCreator({required this.client});

  Future<Response> request(
      {required BaseClientGenerator route, NetworkOptions? options}) {
    return client.fetch(RequestOptions(
        headers: route.header,
        baseUrl: route.baseURL,
        method: route.method,
        path: route.path,
        queryParameters: route.queryParameters,
        data: route.body,
        sendTimeout: route.sendTimeout,
        receiveTimeout: route.receiveTimeOut,
        onReceiveProgress: options?.onReceiveProgress,
        validateStatus: (statusCode) => (statusCode! >= HttpStatus.ok &&
            statusCode <= HttpStatus.multipleChoices)));
  }
}
