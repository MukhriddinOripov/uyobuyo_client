import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/auth_confrim_model.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/register_model.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/upload_image_model.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/user_data_model.dart';

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

  Future<UserDataModel> editUserData({
    required String name,
    required String birthDate,
    required String gender,
    required String city,
  });

  Future<UpdateImage> updateImage({
    required XFile image,
  });

  Future<UserDataModel> getUserData();
}
