import 'package:dio/dio.dart';

class DioExceptions extends DioException {
  DioExceptions({
    required RequestOptions requestOptions,
    dynamic error,
    this.statusCode,
    this.serverError,
    this.checkUnauthorized = false,
    this.errorType = DioExceptionType.unknown,
  }) : super(
          requestOptions: requestOptions,
          error: error,
          type: errorType,
        );

  final int? statusCode;
  final dynamic serverError;
  final bool checkUnauthorized;
  final DioExceptionType errorType;

  @override
  String toString() {
    if (error != null) {
      return error.toString();
    } else {
      return _getServerError();
    }
  }

  String _getServerError() {
    try {
      if (checkUnauthorized && statusCode == 401) {
        return 'Ваш токен устарел перелогинтесь заново!';
      } else {
        if (statusCode! >= 500) {
          return 'Что то пошло не так... Пожалуйста, оповестите нас';
        } else {
          if (serverError['message'] != null) {
            return serverError['message'].toString();
          } else {
            return serverError.toString();
          }
        }
      }
    } catch (e) {
      return 'Что-то пошло не так...';
    }
  }
}
