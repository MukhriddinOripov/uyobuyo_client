part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.successSendSms({required String phoneNumber}) = _SuccessSendSms;
  const factory AuthState.userLogin({required User data}) = _UserLogin;
  const factory AuthState.userRegister() = _UserRegister;
  const factory AuthState.registerSuccess({required RegisterData data}) = _RegisterSuccess;
  const factory AuthState.registerError({ String? msg}) = _RegisterError;
  const factory AuthState.authError({
    required String error,
    required ExceptionType serverException,
  }) = _AuthError;
}