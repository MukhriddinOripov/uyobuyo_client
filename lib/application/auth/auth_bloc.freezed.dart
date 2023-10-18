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
    required TResult Function(FormData image) updateImage,
    required TResult Function() getUserData,
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
    TResult? Function(FormData image)? updateImage,
    TResult? Function()? getUserData,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendSms,
    TResult Function(String otp)? confirmAuth,
    TResult Function(String name, String birthDate, String gender, String city)?
        register,
    TResult Function(FormData image)? updateImage,
    TResult Function()? getUserData,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendSms value) sendSms,
    required TResult Function(_ConfirmAuth value) confirmAuth,
    required TResult Function(_Register value) register,
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendSms value)? sendSms,
    TResult? Function(_ConfirmAuth value)? confirmAuth,
    TResult? Function(_Register value)? register,
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendSms value)? sendSms,
    TResult Function(_ConfirmAuth value)? confirmAuth,
    TResult Function(_Register value)? register,
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_GetUserData value)? getUserData,
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
    required TResult Function(FormData image) updateImage,
    required TResult Function() getUserData,
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
    TResult? Function(FormData image)? updateImage,
    TResult? Function()? getUserData,
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
    TResult Function(FormData image)? updateImage,
    TResult Function()? getUserData,
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
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_GetUserData value) getUserData,
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
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_GetUserData value)? getUserData,
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
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_GetUserData value)? getUserData,
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
    required TResult Function(FormData image) updateImage,
    required TResult Function() getUserData,
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
    TResult? Function(FormData image)? updateImage,
    TResult? Function()? getUserData,
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
    TResult Function(FormData image)? updateImage,
    TResult Function()? getUserData,
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
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_GetUserData value) getUserData,
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
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_GetUserData value)? getUserData,
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
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_GetUserData value)? getUserData,
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
    required TResult Function(FormData image) updateImage,
    required TResult Function() getUserData,
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
    TResult? Function(FormData image)? updateImage,
    TResult? Function()? getUserData,
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
    TResult Function(FormData image)? updateImage,
    TResult Function()? getUserData,
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
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_GetUserData value) getUserData,
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
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_GetUserData value)? getUserData,
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
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_GetUserData value)? getUserData,
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
abstract class _$$UpdateImageImplCopyWith<$Res> {
  factory _$$UpdateImageImplCopyWith(
          _$UpdateImageImpl value, $Res Function(_$UpdateImageImpl) then) =
      __$$UpdateImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormData image});
}

/// @nodoc
class __$$UpdateImageImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateImageImpl>
    implements _$$UpdateImageImplCopyWith<$Res> {
  __$$UpdateImageImplCopyWithImpl(
      _$UpdateImageImpl _value, $Res Function(_$UpdateImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$UpdateImageImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$UpdateImageImpl implements _UpdateImage {
  const _$UpdateImageImpl({required this.image});

  @override
  final FormData image;

  @override
  String toString() {
    return 'AuthEvent.updateImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImageImplCopyWith<_$UpdateImageImpl> get copyWith =>
      __$$UpdateImageImplCopyWithImpl<_$UpdateImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendSms,
    required TResult Function(String otp) confirmAuth,
    required TResult Function(
            String name, String birthDate, String gender, String city)
        register,
    required TResult Function(FormData image) updateImage,
    required TResult Function() getUserData,
    required TResult Function() logOut,
  }) {
    return updateImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendSms,
    TResult? Function(String otp)? confirmAuth,
    TResult? Function(
            String name, String birthDate, String gender, String city)?
        register,
    TResult? Function(FormData image)? updateImage,
    TResult? Function()? getUserData,
    TResult? Function()? logOut,
  }) {
    return updateImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendSms,
    TResult Function(String otp)? confirmAuth,
    TResult Function(String name, String birthDate, String gender, String city)?
        register,
    TResult Function(FormData image)? updateImage,
    TResult Function()? getUserData,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendSms value) sendSms,
    required TResult Function(_ConfirmAuth value) confirmAuth,
    required TResult Function(_Register value) register,
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_LogOut value) logOut,
  }) {
    return updateImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendSms value)? sendSms,
    TResult? Function(_ConfirmAuth value)? confirmAuth,
    TResult? Function(_Register value)? register,
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return updateImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendSms value)? sendSms,
    TResult Function(_ConfirmAuth value)? confirmAuth,
    TResult Function(_Register value)? register,
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(this);
    }
    return orElse();
  }
}

abstract class _UpdateImage implements AuthEvent {
  const factory _UpdateImage({required final FormData image}) =
      _$UpdateImageImpl;

  FormData get image;
  @JsonKey(ignore: true)
  _$$UpdateImageImplCopyWith<_$UpdateImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserDataImplCopyWith<$Res> {
  factory _$$GetUserDataImplCopyWith(
          _$GetUserDataImpl value, $Res Function(_$GetUserDataImpl) then) =
      __$$GetUserDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDataImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUserDataImpl>
    implements _$$GetUserDataImplCopyWith<$Res> {
  __$$GetUserDataImplCopyWithImpl(
      _$GetUserDataImpl _value, $Res Function(_$GetUserDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserDataImpl implements _GetUserData {
  const _$GetUserDataImpl();

  @override
  String toString() {
    return 'AuthEvent.getUserData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserDataImpl);
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
    required TResult Function(FormData image) updateImage,
    required TResult Function() getUserData,
    required TResult Function() logOut,
  }) {
    return getUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendSms,
    TResult? Function(String otp)? confirmAuth,
    TResult? Function(
            String name, String birthDate, String gender, String city)?
        register,
    TResult? Function(FormData image)? updateImage,
    TResult? Function()? getUserData,
    TResult? Function()? logOut,
  }) {
    return getUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendSms,
    TResult Function(String otp)? confirmAuth,
    TResult Function(String name, String birthDate, String gender, String city)?
        register,
    TResult Function(FormData image)? updateImage,
    TResult Function()? getUserData,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendSms value) sendSms,
    required TResult Function(_ConfirmAuth value) confirmAuth,
    required TResult Function(_Register value) register,
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_LogOut value) logOut,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendSms value)? sendSms,
    TResult? Function(_ConfirmAuth value)? confirmAuth,
    TResult? Function(_Register value)? register,
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendSms value)? sendSms,
    TResult Function(_ConfirmAuth value)? confirmAuth,
    TResult Function(_Register value)? register,
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class _GetUserData implements AuthEvent {
  const factory _GetUserData() = _$GetUserDataImpl;
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
    required TResult Function(FormData image) updateImage,
    required TResult Function() getUserData,
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
    TResult? Function(FormData image)? updateImage,
    TResult? Function()? getUserData,
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
    TResult Function(FormData image)? updateImage,
    TResult Function()? getUserData,
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
    required TResult Function(_UpdateImage value) updateImage,
    required TResult Function(_GetUserData value) getUserData,
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
    TResult? Function(_UpdateImage value)? updateImage,
    TResult? Function(_GetUserData value)? getUserData,
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
    TResult Function(_UpdateImage value)? updateImage,
    TResult Function(_GetUserData value)? getUserData,
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
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
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
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
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
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
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
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
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
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
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
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
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
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
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
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
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
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
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
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
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
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
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
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
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
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
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
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
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
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
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
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
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
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
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
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
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
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
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
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
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
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
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
abstract class _$$ErrorSendSmsImplCopyWith<$Res> {
  factory _$$ErrorSendSmsImplCopyWith(
          _$ErrorSendSmsImpl value, $Res Function(_$ErrorSendSmsImpl) then) =
      __$$ErrorSendSmsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$ErrorSendSmsImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorSendSmsImpl>
    implements _$$ErrorSendSmsImplCopyWith<$Res> {
  __$$ErrorSendSmsImplCopyWithImpl(
      _$ErrorSendSmsImpl _value, $Res Function(_$ErrorSendSmsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$ErrorSendSmsImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorSendSmsImpl implements _ErrorSendSms {
  const _$ErrorSendSmsImpl({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthState.errorSendSms(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSendSmsImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSendSmsImplCopyWith<_$ErrorSendSmsImpl> get copyWith =>
      __$$ErrorSendSmsImplCopyWithImpl<_$ErrorSendSmsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return errorSendSms(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return errorSendSms?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (errorSendSms != null) {
      return errorSendSms(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return errorSendSms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return errorSendSms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (errorSendSms != null) {
      return errorSendSms(this);
    }
    return orElse();
  }
}

abstract class _ErrorSendSms implements AuthState {
  const factory _ErrorSendSms({final String? msg}) = _$ErrorSendSmsImpl;

  String? get msg;
  @JsonKey(ignore: true)
  _$$ErrorSendSmsImplCopyWith<_$ErrorSendSmsImpl> get copyWith =>
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
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
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
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
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
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
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
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
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
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
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
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
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
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
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
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
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
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
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
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
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
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
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
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
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
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
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
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
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
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
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
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
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
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
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
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
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
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
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
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
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
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
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
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
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
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
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
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
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
abstract class _$$UpdateImageSuccessImplCopyWith<$Res> {
  factory _$$UpdateImageSuccessImplCopyWith(_$UpdateImageSuccessImpl value,
          $Res Function(_$UpdateImageSuccessImpl) then) =
      __$$UpdateImageSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateImage data});
}

/// @nodoc
class __$$UpdateImageSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UpdateImageSuccessImpl>
    implements _$$UpdateImageSuccessImplCopyWith<$Res> {
  __$$UpdateImageSuccessImplCopyWithImpl(_$UpdateImageSuccessImpl _value,
      $Res Function(_$UpdateImageSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UpdateImageSuccessImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdateImage,
    ));
  }
}

/// @nodoc

class _$UpdateImageSuccessImpl implements _UpdateImageSuccess {
  const _$UpdateImageSuccessImpl({required this.data});

  @override
  final UpdateImage data;

  @override
  String toString() {
    return 'AuthState.updateImageSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImageSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImageSuccessImplCopyWith<_$UpdateImageSuccessImpl> get copyWith =>
      __$$UpdateImageSuccessImplCopyWithImpl<_$UpdateImageSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return updateImageSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return updateImageSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (updateImageSuccess != null) {
      return updateImageSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return updateImageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return updateImageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (updateImageSuccess != null) {
      return updateImageSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateImageSuccess implements AuthState {
  const factory _UpdateImageSuccess({required final UpdateImage data}) =
      _$UpdateImageSuccessImpl;

  UpdateImage get data;
  @JsonKey(ignore: true)
  _$$UpdateImageSuccessImplCopyWith<_$UpdateImageSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImageErrorImplCopyWith<$Res> {
  factory _$$UpdateImageErrorImplCopyWith(_$UpdateImageErrorImpl value,
          $Res Function(_$UpdateImageErrorImpl) then) =
      __$$UpdateImageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$UpdateImageErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UpdateImageErrorImpl>
    implements _$$UpdateImageErrorImplCopyWith<$Res> {
  __$$UpdateImageErrorImplCopyWithImpl(_$UpdateImageErrorImpl _value,
      $Res Function(_$UpdateImageErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$UpdateImageErrorImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateImageErrorImpl implements _UpdateImageError {
  const _$UpdateImageErrorImpl({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthState.updateImageError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImageErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImageErrorImplCopyWith<_$UpdateImageErrorImpl> get copyWith =>
      __$$UpdateImageErrorImplCopyWithImpl<_$UpdateImageErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return updateImageError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return updateImageError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (updateImageError != null) {
      return updateImageError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return updateImageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return updateImageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (updateImageError != null) {
      return updateImageError(this);
    }
    return orElse();
  }
}

abstract class _UpdateImageError implements AuthState {
  const factory _UpdateImageError({final String? msg}) = _$UpdateImageErrorImpl;

  String? get msg;
  @JsonKey(ignore: true)
  _$$UpdateImageErrorImplCopyWith<_$UpdateImageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedUserDataImplCopyWith<$Res> {
  factory _$$LoadedUserDataImplCopyWith(_$LoadedUserDataImpl value,
          $Res Function(_$LoadedUserDataImpl) then) =
      __$$LoadedUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData data});
}

/// @nodoc
class __$$LoadedUserDataImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadedUserDataImpl>
    implements _$$LoadedUserDataImplCopyWith<$Res> {
  __$$LoadedUserDataImplCopyWithImpl(
      _$LoadedUserDataImpl _value, $Res Function(_$LoadedUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedUserDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc

class _$LoadedUserDataImpl implements _LoadedUserData {
  const _$LoadedUserDataImpl({required this.data});

  @override
  final UserData data;

  @override
  String toString() {
    return 'AuthState.loadedUserData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedUserDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedUserDataImplCopyWith<_$LoadedUserDataImpl> get copyWith =>
      __$$LoadedUserDataImplCopyWithImpl<_$LoadedUserDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return loadedUserData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return loadedUserData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (loadedUserData != null) {
      return loadedUserData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return loadedUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return loadedUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (loadedUserData != null) {
      return loadedUserData(this);
    }
    return orElse();
  }
}

abstract class _LoadedUserData implements AuthState {
  const factory _LoadedUserData({required final UserData data}) =
      _$LoadedUserDataImpl;

  UserData get data;
  @JsonKey(ignore: true)
  _$$LoadedUserDataImplCopyWith<_$LoadedUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorUserDataImplCopyWith<$Res> {
  factory _$$ErrorUserDataImplCopyWith(
          _$ErrorUserDataImpl value, $Res Function(_$ErrorUserDataImpl) then) =
      __$$ErrorUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$ErrorUserDataImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorUserDataImpl>
    implements _$$ErrorUserDataImplCopyWith<$Res> {
  __$$ErrorUserDataImplCopyWithImpl(
      _$ErrorUserDataImpl _value, $Res Function(_$ErrorUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$ErrorUserDataImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorUserDataImpl implements _ErrorUserData {
  const _$ErrorUserDataImpl({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthState.errorUserData(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorUserDataImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorUserDataImplCopyWith<_$ErrorUserDataImpl> get copyWith =>
      __$$ErrorUserDataImplCopyWithImpl<_$ErrorUserDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool loading) loading,
    required TResult Function(String phoneNumber) successSendSms,
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
    required TResult Function() logOutedState,
    required TResult Function(String error, ExceptionType serverException)
        authError,
  }) {
    return errorUserData(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool loading)? loading,
    TResult? Function(String phoneNumber)? successSendSms,
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
    TResult? Function()? logOutedState,
    TResult? Function(String error, ExceptionType serverException)? authError,
  }) {
    return errorUserData?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool loading)? loading,
    TResult Function(String phoneNumber)? successSendSms,
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
    TResult Function()? logOutedState,
    TResult Function(String error, ExceptionType serverException)? authError,
    required TResult orElse(),
  }) {
    if (errorUserData != null) {
      return errorUserData(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSendSms value) successSendSms,
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
    required TResult Function(_LogOutedState value) logOutedState,
    required TResult Function(_AuthError value) authError,
  }) {
    return errorUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSendSms value)? successSendSms,
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
    TResult? Function(_LogOutedState value)? logOutedState,
    TResult? Function(_AuthError value)? authError,
  }) {
    return errorUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSendSms value)? successSendSms,
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
    TResult Function(_LogOutedState value)? logOutedState,
    TResult Function(_AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (errorUserData != null) {
      return errorUserData(this);
    }
    return orElse();
  }
}

abstract class _ErrorUserData implements AuthState {
  const factory _ErrorUserData({final String? msg}) = _$ErrorUserDataImpl;

  String? get msg;
  @JsonKey(ignore: true)
  _$$ErrorUserDataImplCopyWith<_$ErrorUserDataImpl> get copyWith =>
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
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
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
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
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
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
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
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
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
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
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
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
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
    required TResult Function(String? msg) errorSendSms,
    required TResult Function(User data) userLogin,
    required TResult Function() userRegister,
    required TResult Function(RegisterData data) registerSuccess,
    required TResult Function(String? msg) registerError,
    required TResult Function(UpdateImage data) updateImageSuccess,
    required TResult Function(String? msg) updateImageError,
    required TResult Function(UserData data) loadedUserData,
    required TResult Function(String? msg) errorUserData,
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
    TResult? Function(String? msg)? errorSendSms,
    TResult? Function(User data)? userLogin,
    TResult? Function()? userRegister,
    TResult? Function(RegisterData data)? registerSuccess,
    TResult? Function(String? msg)? registerError,
    TResult? Function(UpdateImage data)? updateImageSuccess,
    TResult? Function(String? msg)? updateImageError,
    TResult? Function(UserData data)? loadedUserData,
    TResult? Function(String? msg)? errorUserData,
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
    TResult Function(String? msg)? errorSendSms,
    TResult Function(User data)? userLogin,
    TResult Function()? userRegister,
    TResult Function(RegisterData data)? registerSuccess,
    TResult Function(String? msg)? registerError,
    TResult Function(UpdateImage data)? updateImageSuccess,
    TResult Function(String? msg)? updateImageError,
    TResult Function(UserData data)? loadedUserData,
    TResult Function(String? msg)? errorUserData,
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
    required TResult Function(_ErrorSendSms value) errorSendSms,
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserRegister value) userRegister,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_RegisterError value) registerError,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_UpdateImageError value) updateImageError,
    required TResult Function(_LoadedUserData value) loadedUserData,
    required TResult Function(_ErrorUserData value) errorUserData,
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
    TResult? Function(_ErrorSendSms value)? errorSendSms,
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserRegister value)? userRegister,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_RegisterError value)? registerError,
    TResult? Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult? Function(_UpdateImageError value)? updateImageError,
    TResult? Function(_LoadedUserData value)? loadedUserData,
    TResult? Function(_ErrorUserData value)? errorUserData,
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
    TResult Function(_ErrorSendSms value)? errorSendSms,
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserRegister value)? userRegister,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_RegisterError value)? registerError,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_UpdateImageError value)? updateImageError,
    TResult Function(_LoadedUserData value)? loadedUserData,
    TResult Function(_ErrorUserData value)? errorUserData,
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
