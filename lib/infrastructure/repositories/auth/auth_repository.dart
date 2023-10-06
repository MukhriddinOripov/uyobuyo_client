import 'package:dio/dio.dart';
import 'package:uyobuyo_client/domain/auth/i_auth.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/auth_confrim_model.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/register_model.dart';
import 'package:uyobuyo_client/infrastructure/services/network_provider.dart';

class AuthRepository implements IAuth {
  const AuthRepository();

  @override
  Future<Response> sendSms({required String phone}) async {
    final Response<Map<String, dynamic>> response =
        await NetworkProvider.dio.post(NetworkProvider.routes.sendSms, queryParameters: {"phone_number": phone});
    return response;
  }

  @override
  Future<AuthConfirm> confirmAuth({required String phone, required String? otp}) async {
    final Response<Map<String, dynamic>> response =
        await NetworkProvider.dio.post(NetworkProvider.routes.confirmAuth, queryParameters: {"phone_number": phone, 'message': otp});
    return AuthConfirm.fromJson(response.data ?? {});
  }

  @override
  Future<RegisterModel> register({required String name, required String birthDate, required String gender, required String city}) async {
    final Response<Map<String, dynamic>> response = await NetworkProvider.dio.put(
      NetworkProvider.routes.confirmAuth,
      data: {
        'name': name,
        'birth_date': birthDate,
        'gender': gender,
        'city': city,
      },
    );
    return RegisterModel.fromJson(response.data ?? {});
  }
}
