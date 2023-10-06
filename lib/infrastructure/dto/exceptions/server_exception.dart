import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:uyobuyo_client/main.dart';

enum ExceptionType {
  noConnection,
  unknown,
  server,
  response,
}

ExceptionType getExceptionType({
  Object? error,
}) {
  if (error is DioException) {
    if (error.type == DioExceptionType.badResponse) {
      if (error.response != null) {
        if (error.response!.statusCode! >= 500) {
          return ExceptionType.server;
        } else {
          return ExceptionType.response;
        }
      } else {
        return ExceptionType.server;
      }
    } else if (error.type == DioExceptionType.unknown &&
        (customInstance.connectionStatus == InternetConnectionStatus.disconnected)) {
      return ExceptionType.noConnection;
    } else {
      return ExceptionType.unknown;
    }
  } else {
    return ExceptionType.unknown;
  }
}
