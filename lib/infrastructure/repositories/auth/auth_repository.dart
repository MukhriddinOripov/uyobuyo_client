import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uyobuyo_client/domain/auth/i_auth.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/auth_confrim_model.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/register_model.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/upload_image_model.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/user_data_model.dart';
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
    final Response<Map<String, dynamic>> response = await NetworkProvider.dio
        .post(NetworkProvider.routes.confirmAuth, queryParameters: {"phone_number": phone, 'message': otp});
    return AuthConfirm.fromJson(response.data ?? {});
  }

  @override
  Future<RegisterModel> register(
      {required String name, required String birthDate, required String gender, required String city}) async {
    try {
      final Response<Map<String, dynamic>> response = await NetworkProvider.dio.put(
        NetworkProvider.routes.register,
        data: {
          'name': name,
          'birth_date': birthDate,
          'gender': gender,
          'city': city,
        },
      );
      return RegisterModel.fromJson(response.data ?? {});
    } catch (e) {
      return RegisterModel.fromJson({});
    }
  }

  @override
  Future<UserDataModel> editUserData(
      {required String name, required String birthDate, required String gender, required String city}) async {
    try {
      final Response<Map<String, dynamic>> response = await NetworkProvider.dio.put(
        NetworkProvider.routes.userData,
        data: {
          'name': name,
          'birth_date': birthDate,
          'gender': gender,
          'city': city,
        },
      );
      return UserDataModel.fromJson(response.data ?? {});
    } catch (e) {
      return UserDataModel.fromJson({});
    }
  }

  @override
  Future<UpdateImage> updateImage({required XFile image}) async {
    String file = image.path.split('/').last;
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(image.path, filename: file),
    });

    try {
      final Response response = await NetworkProvider.dio.post(
        NetworkProvider.routes.updateProfileImage,
        options: Options(contentType: "multipart/form-data"),
        data: formData,
      );
      return UpdateImage.fromJson(response.data ?? {});
    } catch (e) {
      return UpdateImage.fromJson({});
    }
  }

  @override
  Future<UserDataModel> getUserData() async {
    try {
      final Response response = await NetworkProvider.dio.get(NetworkProvider.routes.userData);
      return UserDataModel.fromJson(response.data ?? {});
    } catch (e) {
      return UserDataModel.fromJson({});
    }
  }
}
