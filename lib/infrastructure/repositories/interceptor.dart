import 'dart:io';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:uyobuyo_client/infrastructure/dto/exceptions/dio_exception.dart';
import 'package:uyobuyo_client/infrastructure/repositories/refresh_token.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';
import 'package:uyobuyo_client/main.dart';

class DioInterceptor extends Interceptor {
  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 403 || err.response?.statusCode == 401) {
      return refreshToken(err, handler);
    } else if (err.type == DioExceptionType.unknown && err.error != null && err.error is SocketException) {
      return handler.reject(
        DioExceptions(
          requestOptions: err.requestOptions,
          error: 'Вы в оффлайне 🙈',
        ),
      );
    } else {
      return handler.reject(DioExceptions(
        requestOptions: err.requestOptions,
        statusCode: err.response?.statusCode,
        serverError: err.response?.data ?? {},
        errorType: err.type,
        checkUnauthorized: !err.requestOptions.headers.containsKey('check_authorize'),
      ));
    }
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    SharedPrefService pref = await SharedPrefService.initialize();
    if (await customInstance.connectionStatus == InternetConnectionStatus.connected) {
      options.headers.addAll({
        HttpHeaders.acceptHeader: 'application/json',
      });

      if (!options.headers.containsKey('with_out_token')) {
        options.headers.addAll({HttpHeaders.authorizationHeader: 'Bearer ${pref.getAccessToken}'});
      } else {
        options.headers.remove('with_out_token');
      }
      return super.onRequest(options, handler);
    } else {
      return handler.reject(DioExceptions(
        requestOptions: options,
        error: 'Вы в оффлайне 🙈',
      ));
    }
  }
}
