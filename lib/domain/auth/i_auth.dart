import 'package:dio/dio.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/auth_confrim_model.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/register_model.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/upload_image_model.dart';

abstract class IAuth {
  const IAuth._();

  Future<Response> sendSms({required String phone});

  Future<AuthConfirm> confirmAuth({
    required String phone,
    required String? otp,
  });

  Future<RegisterModel> register({
    required String name,
    required String birthDate,
    required String gender,
    required String city,
  });

  Future<UpdateImage> updateImage({
    required FormData image,
  });
}
