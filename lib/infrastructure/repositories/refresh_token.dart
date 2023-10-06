import 'package:dio/dio.dart';
import 'package:uyobuyo_client/infrastructure/services/network_provider.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';

BaseOptions options = BaseOptions(
  baseUrl: NetworkProvider.routes.baseUrl,
  responseType: ResponseType.json,
  headers: {"Accept": "application/json"},
);

Future<void> refreshToken(DioException err, ErrorInterceptorHandler handler) async {
  // final String refreshToken = await getRefreshToken();
  // Response? response;
  // try {
  //   response = await Dio(options).post(
  // NetworkProvider.routes.refreshToken,
  // data: {"refresh_token": refreshToken},
  //   );
  // } on DioException catch (e) {
  //   if (e.response!.data["error"] == "invalid_request" && e.response!.data["hint"] == "Token has expired") {
  //     await removeTokens();
  //     AppManagerCubit.router!.go(Routes.checkPhonePage.path);
  // return handler.reject(
  //   DioException(
  //     statusCode: 401,
  //     checkUnauthorized: true,
  //     requestOptions: err.requestOptions,
  //     serverError: e.response,
  //   ),
  // );
  //   }
  // }

  // if (response?.statusCode == 200 && response?.data["success"]) {
  //   AuthModel authModel = AuthModel.fromJson(response?.data);
  //
  //   String refreshToken = (authModel.data as Body).refreshToken;
  //   String accessToken = (authModel.data as Body).accessToken;
  //
  //   await saveTokens(accessToken: accessToken, refreshToken: refreshToken);
  //
  //   return _retry(err.requestOptions, handler);
  // } else {
  //   await removeTokens();
  //   AppManagerCubit.router!.go(Routes.checkPhonePage.path);
  // }
}

Future<void> _retry(RequestOptions requestOptions, ErrorInterceptorHandler handler) async {
  final String accessToken = await getAccessToken();
  final refreshedOptions = Options(
    method: requestOptions.method,
    headers: {'Authorization': 'Bearer $accessToken'},
  );

  await NetworkProvider.dio
      .request(
    requestOptions.path,
    data: requestOptions.data,
    queryParameters: requestOptions.queryParameters,
    options: refreshedOptions,
  )
      .then((value) {
    return handler.resolve(value);
  });
}

Future<String> getAccessToken() async {
  SharedPrefService pref = await SharedPrefService.initialize();
  return pref.getAccessToken;
}

Future<String> getRefreshToken() async {
  SharedPrefService pref = await SharedPrefService.initialize();
  return pref.getRefreshToken;
}

Future<void> removeTokens() async {
  SharedPrefService pref = await SharedPrefService.initialize();
  pref.logOut();
}

Future<void> saveTokens({required String accessToken, required String refreshToken}) async {
  SharedPrefService pref = await SharedPrefService.initialize();
  pref.setAccessToken(accessToken);
  pref.setRefreshToken(refreshToken);
}
