import 'dart:async';
import 'dart:developer';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uyobuyo_client/infrastructure/dto/exceptions/server_exception.dart';
import 'package:uyobuyo_client/infrastructure/dto/filter/requests_filter.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/auth_confrim_model.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/register_model.dart';
import 'package:uyobuyo_client/infrastructure/repositories/auth/auth_repository.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository repository = const AuthRepository();
  RequestsFilter filter = const RequestsFilter();

  late String phoneNumber;
  late String confirmationToken;
  late String password;
  late String firstPinCode;

  AuthBloc() : super(const AuthState.initial()) {
    on<_SendSms>(_sendSms, transformer: droppable());
    on<_ConfirmAuth>(_confirmAuth, transformer: droppable());
    on<_Register>(_register, transformer: droppable());
  }

  Future _sendSms(_SendSms event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final data = await repository.sendSms(
        phone: filter.fPhoneNumber(event.phoneNumber),
      );
      if (data.statusCode == 200) {
        phoneNumber = filter.fPhoneNumber(event.phoneNumber);
        emit(AuthState.successSendSms(phoneNumber: phoneNumber));
      }
    } catch (e) {
      emit(
        AuthState.authError(
          error: e.toString(),
          serverException: getExceptionType(error: e),
        ),
      );
      log(e.toString());
    }
  }

  Future _confirmAuth(_ConfirmAuth event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      SharedPrefService prefs = await SharedPrefService.initialize();
      final AuthConfirm data = await repository.confirmAuth(phone: phoneNumber, otp: event.otp);
      if (data.success) {
        // saveToken(data: data);
        String accessToken = data.data.token;
        prefs.setAccessToken(accessToken);
        if (data.data.hasExisted) {
          emit(AuthState.userLogin(data: data.data.user));
        } else {
          emit(const AuthState.userRegister());
        }
      }
    } catch (e) {
      emit(
        AuthState.authError(
          error: e.toString(),
          serverException: getExceptionType(error: e),
        ),
      );
      log(e.toString());
    }
  }

  Future _register(_Register event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final RegisterModel data = await repository.register(name: event.name, birthDate: event.birthDate, gender: event.gender, city: event.gender);
      if (data.success) {
        emit(AuthState.registerSuccess(data: data.data));
      } else {
        emit(const AuthState.registerError());
      }
    } catch (e) {
      emit(
        AuthState.authError(
          error: e.toString(),
          serverException: getExceptionType(error: e),
        ),
      );
      log(e.toString());
    }
  }
}

saveToken({required AuthConfirm data}) async {
  // String refreshToken = (data.data as Body).refreshToken;
  String accessToken = data.data.token;
  SharedPrefService prefs = await SharedPrefService.initialize();
  // prefs.setRefreshToken(refreshToken);
  prefs.setAccessToken(accessToken);
}
