// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendSms,
    required TResult Function(String otp) confirmAuth,
    required TResult Function(
            String name, String birthDate, String gender, String city)
        register,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendSms,
    TResult? Function(String otp)? confirmAuth,
    TResult? Function(
            String name, String birthDate, String gender, String city)?
        register,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendSms,
    TResult Function(String otp)? confirmAuth,
    TResult Function(String name, String birthDate, String gender, String city)?
        register,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendSms value) sendSms,
    required TResult Function(_ConfirmAuth value) confirmAuth,
    required TResult Function(_Register value) register,
    required TResult Function(_LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendSms value)? sendSms,
    TResult? Function(_ConfirmAuth value)? confirmAuth,
    TResult? Function(_Register value)? register,
    TResult? Function(_LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendSms value)? sendSms,
    TResult Function(_ConfirmAuth value)? confirmAuth,
    TResult Function(_Register value)? register,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendSmsImplCopyWith<$Res> {
  factory _$$SendSmsImplCopyWith(
          _$SendSmsImpl value, $Res Function(_$SendSmsImpl) then) =
      __$$SendSmsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$SendSmsImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendSmsImpl>
    implements _$$SendSmsImplCopyWith<$Res> {
  __$$SendSmsImplCopyWithImpl(
      _$SendSmsImpl _value, $Res Function(_$SendSmsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$SendSmsImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendSmsImpl implements _SendSms {
  const _$SendSmsImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.sendSms(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSmsImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSmsImplCopyWith<_$SendSmsImpl> get copyWith =>
      __$$SendSmsImplCopyWithImpl<_$SendSmsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendSms,
    required TResult Function(String otp) confirmAuth,
    required TResult Function(
            String name, String birthDate, String gender, String city)
        register,
    required TResult Function() logOut,
  }) {
    return sendSms(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendSms,
    TResult? Function(String otp)? confirmAuth,
    TResult? Function(
            String name, String birthDate, String gender, String city)?
        register,
    TResult? Function()? logOut,
  }) {
    return sendSms?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendSms,
    TResult Function(String otp)? confirmAuth,
    TResult Function(String name, String birthDate, String gender, String city)?
        register,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (sendSms != null) {
      return sendSms(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendSms value) sendSms,
    required TResult Function(_ConfirmAuth value) confirmAuth,
    required TResult Function(_Register value) register,
    required TResult Function(_LogOut value) logOut,
  }) {
    return sendSms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendSms value)? sendSms,
    TResult? Function(_ConfirmAuth value)? confirmAuth,
    TResult? Function(_Register value)? register,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return sendSms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendSms value)? sendSms,
    TResult Function(_ConfirmAuth value)? confirmAuth,
    TResult Function(_Register value)? register,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (sendSms != null) {
      return sendSms(this);
    }
    return orElse();
  }
}

abstract class _SendSms implements AuthEvent {
  const factory _SendSms({required final String phoneNumber}) = _$SendSmsImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$SendSmsImplCopyWith<_$SendSmsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmAuthImplCopyWith<$Res> {
  factory _$$ConfirmAuthImplCopyWith(
          _$ConfirmAuthImpl value, $Res Function(_$ConfirmAuthImpl) then) =
      __$$ConfirmAuthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$ConfirmAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ConfirmAuthImpl>
    implements _$$ConfirmAuthImplCopyWith<$Res> {
  __$$ConfirmAuthImplCopyWithImpl(
      _$ConfirmAuthImpl _value, $Res Function(_$ConfirmAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$ConfirmAuthImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmAuthImpl implements _ConfirmAuth {
  const _$ConfirmAuthImpl({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'AuthEvent.confirmAuth(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmAuthImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmAuthImplCopyWith<_$ConfirmAuthImpl> get copyWith =>
      __$$ConfirmAuthImplCopyWithImpl<_$ConfirmAuthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendSms,
    required TResult Function(String otp) confirmAuth,
    required TResult Function(
            String name, String birthDate, String gender, String city)
        register,
    required TResult Function() logOut,
  }) {
    return confirmAuth(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendSms,
    TResult? Function(String otp)? confirmAuth,
    TResult? Function(
            String name, String birthDate, String gender, String city)?
        register,
    TResult? Function()? logOut,
  }) {
    return confirmAuth?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendSms,
    TResult Function(String otp)? confirmAuth,
    TResult Function(String name, String birthDate, String gender, String city)?
        register,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (confirmAuth != null) {
      return confirmAuth(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendSms value) sendSms,
    required TResult Function(_ConfirmAuth value) confirmAuth,
    required TResult Function(_Register value) register,
    required TResult Function(_LogOut value) logOut,
  }) {
    return confirmAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendSms value)? sendSms,
    TResult? Function(_ConfirmAuth value)? confirmAuth,
    TResult? Function(_Register value)? register,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return confirmAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendSms value)? sendSms,
    TResult Function(_ConfirmAuth value)? confirmAuth,
    TResult Function(_Register value)? register,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (confirmAuth != null) {
      return confirmAuth(this);
    }
    return orElse();
  }
}

abstract class _ConfirmAuth implements AuthEvent {
  const factory _ConfirmAuth({required final String otp}) = _$ConfirmAuthImpl;

  String get otp;
  @JsonKey(ignore: true)
  _$$ConfirmAuthImplCopyWith<_$ConfirmAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String birthDate, String gender, String city});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birthDate = null,
    Object? gender = null,
    Object? city = null,
  }) {
    return _then(_$RegisterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(
      {required this.name,
      required this.birthDate,
      required this.gender,
      required this.city});

  @override
  final String name;
  @override
  final String birthDate;
  @override
  final String gender;
  @override
  final String city;

  @override
  String toString() {
    return 'AuthEvent.register(name: $name, birthDate: $birthDate, gender: $gender, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, birthDate, gender, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendSms,
    required TResult Function(String otp) confirmAuth,
    required TResult Function(
            String name, String birthDate, String gender, String city)
        register,
    required TResult Function() logOut,
  }) {
    return register(name, birthDate, gender, city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendSms,
    TResult? Function(String otp)? confirmAuth,
    TResult? Function(
            String name, String birthDate, String gender, String city)?
        register,
    TResult? Function()? logOut,
  }) {
    return register?.call(name, birthDate, gender, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendSms,
    TResult Function(String otp)? confirmAuth,
    TResult Function(String name, String birthDate, String gender, String city)?
        register,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(name, birthDate, gender, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendSms value) sendSms,
    required TResult Function(_ConfirmAuth value) confirmAuth,
    required TResult Function(_Register value) register,
    required TResult Function(_LogOut value) logOut,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendSms value)? sendSms,
    TResult? Function(_ConfirmAuth value)? confirmAuth,
    TResult? Function(_Register value)? register,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendSms value)? sendSms,
    TResult Function(_ConfirmAuth value)? confirmAuth,
    TResult Function(_Register value)? register,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(
      {required final String name,
      required final String birthDate,
      required final String gender,
      required final String city}) = _$RegisterImpl;

  String get name;
  String get birthDate;
  String get gender;
  String get city;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendSms,
    required TResult Function(String otp) confirmAuth,
    required TResult Function(
            String name, String birthDate, String gender, String city)
        register,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendSms,
    TResult? Function(String otp)? confirmAuth,
    TResult? Function(
            String name, String birthDate, String gender, String city)?
        register,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendSms,
    TResult Function(String otp)? confirmAuth,
    TResult Function(String name, String birthDate, String gender, String city)?
        register,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendSms value) sendSms,
    required TResult Function(_ConfirmAuth value) confirmAuth,
    required TResult Function(_Register value) register,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendSms value)? sendSms,
    TResult? Function(_ConfirmAuth value)? confirmAuth,
    TResult? Function(_Register value)? register,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendSms value)? sendSms,
    TResult Function(_ConfirmAuth value)? confirmAuth,
    TResult Function(_Register value)? register,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthEvent {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool loading});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
  }) {
    return _then(_$LoadingImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({required this.loading});

  @override
  final bool loading;

  @override
  String toString() {
    return 'AuthState.loading(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return loading(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return loading?.call(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading({required final bool loading}) = _$LoadingImpl;

  bool get loading;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSendSmsImplCopyWith<$Res> {
  factory _$$SuccessSendSmsImplCopyWith(_$SuccessSendSmsImpl value,
          $Res Function(_$SuccessSendSmsImpl) then) =
      __$$SuccessSendSmsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$SuccessSendSmsImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessSendSmsImpl>
    implements _$$SuccessSendSmsImplCopyWith<$Res> {
  __$$SuccessSendSmsImplCopyWithImpl(
      _$SuccessSendSmsImpl _value, $Res Function(_$SuccessSendSmsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$SuccessSendSmsImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessSendSmsImpl implements _SuccessSendSms {
  const _$SuccessSendSmsImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthState.successSendSms(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSendSmsImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSendSmsImplCopyWith<_$SuccessSendSmsImpl> get copyWith =>
      __$$SuccessSendSmsImplCopyWithImpl<_$SuccessSendSmsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return successSendSms(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return successSendSms?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (successSendSms != null) {
      return successSendSms(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return successSendSms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return successSendSms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (successSendSms != null) {
      return successSendSms(this);
    }
    return orElse();
  }
}

abstract class _SuccessSendSms implements AuthState {
  const factory _SuccessSendSms({required final String phoneNumber}) =
      _$SuccessSendSmsImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$SuccessSendSmsImplCopyWith<_$SuccessSendSmsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoginImplCopyWith<$Res> {
  factory _$$UserLoginImplCopyWith(
          _$UserLoginImpl value, $Res Function(_$UserLoginImpl) then) =
      __$$UserLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User data});
}

/// @nodoc
class __$$UserLoginImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserLoginImpl>
    implements _$$UserLoginImplCopyWith<$Res> {
  __$$UserLoginImplCopyWithImpl(
      _$UserLoginImpl _value, $Res Function(_$UserLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UserLoginImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserLoginImpl implements _UserLogin {
  const _$UserLoginImpl({required this.data});

  @override
  final User data;

  @override
  String toString() {
    return 'AuthState.userLogin(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginImplCopyWith<_$UserLoginImpl> get copyWith =>
      __$$UserLoginImplCopyWithImpl<_$UserLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return userLogin(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return userLogin?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return userLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return userLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(this);
    }
    return orElse();
  }
}

abstract class _UserLogin implements AuthState {
  const factory _UserLogin({required final User data}) = _$UserLoginImpl;

  User get data;
  @JsonKey(ignore: true)
  _$$UserLoginImplCopyWith<_$UserLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRegisterImplCopyWith<$Res> {
  factory _$$UserRegisterImplCopyWith(
          _$UserRegisterImpl value, $Res Function(_$UserRegisterImpl) then) =
      __$$UserRegisterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserRegisterImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserRegisterImpl>
    implements _$$UserRegisterImplCopyWith<$Res> {
  __$$UserRegisterImplCopyWithImpl(
      _$UserRegisterImpl _value, $Res Function(_$UserRegisterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserRegisterImpl implements _UserRegister {
  const _$UserRegisterImpl();

  @override
  String toString() {
    return 'AuthState.userRegister()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserRegisterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return userRegister();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return userRegister?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (userRegister != null) {
      return userRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return userRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return userRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (userRegister != null) {
      return userRegister(this);
    }
    return orElse();
  }
}

abstract class _UserRegister implements AuthState {
  const factory _UserRegister() = _$UserRegisterImpl;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<$Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl value,
          $Res Function(_$RegisterSuccessImpl) then) =
      __$$RegisterSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterData data});
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterSuccessImpl>
    implements _$$RegisterSuccessImplCopyWith<$Res> {
  __$$RegisterSuccessImplCopyWithImpl(
      _$RegisterSuccessImpl _value, $Res Function(_$RegisterSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$RegisterSuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterData,
    ));
  }
}

/// @nodoc

class _$RegisterSuccessImpl implements _RegisterSuccess {
  const _$RegisterSuccessImpl({required this.data});

  @override
  final RegisterData data;

  @override
  String toString() {
    return 'AuthState.registerSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      __$$RegisterSuccessImplCopyWithImpl<_$RegisterSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return registerSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return registerSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccess implements AuthState {
  const factory _RegisterSuccess({required final RegisterData data}) =
      _$RegisterSuccessImpl;

  RegisterData get data;
  @JsonKey(ignore: true)
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterErrorImplCopyWith<$Res> {
  factory _$$RegisterErrorImplCopyWith(
          _$RegisterErrorImpl value, $Res Function(_$RegisterErrorImpl) then) =
      __$$RegisterErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$RegisterErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterErrorImpl>
    implements _$$RegisterErrorImplCopyWith<$Res> {
  __$$RegisterErrorImplCopyWithImpl(
      _$RegisterErrorImpl _value, $Res Function(_$RegisterErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$RegisterErrorImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RegisterErrorImpl implements _RegisterError {
  const _$RegisterErrorImpl({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthState.registerError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterErrorImplCopyWith<_$RegisterErrorImpl> get copyWith =>
      __$$RegisterErrorImplCopyWithImpl<_$RegisterErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return registerError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return registerError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return registerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return registerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(this);
    }
    return orElse();
  }
}

abstract class _RegisterError implements AuthState {
  const factory _RegisterError({final String? msg}) = _$RegisterErrorImpl;

  String? get msg;
  @JsonKey(ignore: true)
  _$$RegisterErrorImplCopyWith<_$RegisterErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutedStateImplCopyWith<$Res> {
  factory _$$LogOutedStateImplCopyWith(
          _$LogOutedStateImpl value, $Res Function(_$LogOutedStateImpl) then) =
      __$$LogOutedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogOutedStateImpl>
    implements _$$LogOutedStateImplCopyWith<$Res> {
  __$$LogOutedStateImplCopyWithImpl(
      _$LogOutedStateImpl _value, $Res Function(_$LogOutedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutedStateImpl implements _LogOutedState {
  const _$LogOutedStateImpl();

  @override
  String toString() {
    return 'AuthState.logOutedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return logOutedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return logOutedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (logOutedState != null) {
      return logOutedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return logOutedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return logOutedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (logOutedState != null) {
      return logOutedState(this);
    }
    return orElse();
  }
}

abstract class _LogOutedState implements AuthState {
  const factory _LogOutedState() = _$LogOutedStateImpl;
}

/// @nodoc
abstract class _$$AuthErrorImplCopyWith<$Res> {
  factory _$$AuthErrorImplCopyWith(
          _$AuthErrorImpl value, $Res Function(_$AuthErrorImpl) then) =
      __$$AuthErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error, ExceptionType serverException});
}

/// @nodoc
class __$$AuthErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthErrorImpl>
    implements _$$AuthErrorImplCopyWith<$Res> {
  __$$AuthErrorImplCopyWithImpl(
      _$AuthErrorImpl _value, $Res Function(_$AuthErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? serverException = null,
  }) {
    return _then(_$AuthErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      serverException: null == serverException
          ? _value.serverException
          : serverException // ignore: cast_nullable_to_non_nullable
              as ExceptionType,
    ));
  }
}

/// @nodoc

class _$AuthErrorImpl implements _AuthError {
  const _$AuthErrorImpl({required this.error, required this.serverException});

  @override
  final String error;
  @override
  final ExceptionType serverException;

  @override
  String toString() {
    return 'AuthState.authError(error: $error, serverException: $serverException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.serverException, serverException) ||
                other.serverException == serverException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, serverException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorImplCopyWith<_$AuthErrorImpl> get copyWith =>
      __$$AuthErrorImplCopyWithImpl<_$AuthErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return authError(error, serverException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return authError?.call(error, serverException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(error, serverException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class _AuthError implements AuthState {
  const factory _AuthError(
      {required final String error,
      required final ExceptionType serverException}) = _$AuthErrorImpl;

  String get error;
  ExceptionType get serverException;
  @JsonKey(ignore: true)
  _$$AuthErrorImplCopyWith<_$AuthErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
