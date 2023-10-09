part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendSms({required String phoneNumber}) = _SendSms;
  const factory AuthEvent.confirmAuth({required String otp}) = _ConfirmAuth;
  const factory AuthEvent.register({required String name, required String birthDate, required String gender, required String city}) = _Register;
  const factory AuthEvent.updateImage({ required FormData image}) = _UpdateImage;
  const factory AuthEvent.logOut() = _LogOut;
}
