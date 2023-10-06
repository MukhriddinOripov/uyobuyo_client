import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:uyobuyo_client/domain/routes/i_routes.dart';
import 'package:uyobuyo_client/infrastructure/repositories/interceptor.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';

class NetworkProvider {
  static IRoutes routes = const IRoutes();
  static late Dio dio;

  static Future<void> init() async {
    SharedPrefService pref = await SharedPrefService.initialize();
    dio = Dio(
      BaseOptions(baseUrl: routes.baseUrl, queryParameters: {"language": 'RUSSIAN'}),
    )..interceptors.addAll([
        DioInterceptor(),
        if (kDebugMode)
          LogInterceptor(
            responseHeader: false,
            requestBody: true,
            responseBody: true,
            logPrint: (error) => log(error.toString()),
          ),
      ]);
  }
}
