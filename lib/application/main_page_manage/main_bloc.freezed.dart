// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? whereFrom, bool? chooseMap) initMainPage,
    required TResult Function(bool whereTo) chooseAddressInMap,
    required TResult Function() createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? whereFrom, bool? chooseMap)? initMainPage,
    TResult? Function(bool whereTo)? chooseAddressInMap,
    TResult? Function()? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? whereFrom, bool? chooseMap)? initMainPage,
    TResult Function(bool whereTo)? chooseAddressInMap,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitMainPage value) initMainPage,
    required TResult Function(_ChooseAddressInMap value) chooseAddressInMap,
    required TResult Function(_CreateOrder value) createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitMainPage value)? initMainPage,
    TResult? Function(_ChooseAddressInMap value)? chooseAddressInMap,
    TResult? Function(_CreateOrder value)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitMainPage value)? initMainPage,
    TResult Function(_ChooseAddressInMap value)? chooseAddressInMap,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MainEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? whereFrom, bool? chooseMap) initMainPage,
    required TResult Function(bool whereTo) chooseAddressInMap,
    required TResult Function() createOrder,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? whereFrom, bool? chooseMap)? initMainPage,
    TResult? Function(bool whereTo)? chooseAddressInMap,
    TResult? Function()? createOrder,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? whereFrom, bool? chooseMap)? initMainPage,
    TResult Function(bool whereTo)? chooseAddressInMap,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitMainPage value) initMainPage,
    required TResult Function(_ChooseAddressInMap value) chooseAddressInMap,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitMainPage value)? initMainPage,
    TResult? Function(_ChooseAddressInMap value)? chooseAddressInMap,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitMainPage value)? initMainPage,
    TResult Function(_ChooseAddressInMap value)? chooseAddressInMap,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MainEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$InitMainPageImplCopyWith<$Res> {
  factory _$$InitMainPageImplCopyWith(
          _$InitMainPageImpl value, $Res Function(_$InitMainPageImpl) then) =
      __$$InitMainPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? whereFrom, bool? chooseMap});
}

/// @nodoc
class __$$InitMainPageImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$InitMainPageImpl>
    implements _$$InitMainPageImplCopyWith<$Res> {
  __$$InitMainPageImplCopyWithImpl(
      _$InitMainPageImpl _value, $Res Function(_$InitMainPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whereFrom = freezed,
    Object? chooseMap = freezed,
  }) {
    return _then(_$InitMainPageImpl(
      whereFrom: freezed == whereFrom
          ? _value.whereFrom
          : whereFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      chooseMap: freezed == chooseMap
          ? _value.chooseMap
          : chooseMap // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitMainPageImpl implements _InitMainPage {
  const _$InitMainPageImpl({this.whereFrom, this.chooseMap});

  @override
  final String? whereFrom;
  @override
  final bool? chooseMap;

  @override
  String toString() {
    return 'MainEvent.initMainPage(whereFrom: $whereFrom, chooseMap: $chooseMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitMainPageImpl &&
            (identical(other.whereFrom, whereFrom) ||
                other.whereFrom == whereFrom) &&
            (identical(other.chooseMap, chooseMap) ||
                other.chooseMap == chooseMap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, whereFrom, chooseMap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitMainPageImplCopyWith<_$InitMainPageImpl> get copyWith =>
      __$$InitMainPageImplCopyWithImpl<_$InitMainPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? whereFrom, bool? chooseMap) initMainPage,
    required TResult Function(bool whereTo) chooseAddressInMap,
    required TResult Function() createOrder,
  }) {
    return initMainPage(whereFrom, chooseMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? whereFrom, bool? chooseMap)? initMainPage,
    TResult? Function(bool whereTo)? chooseAddressInMap,
    TResult? Function()? createOrder,
  }) {
    return initMainPage?.call(whereFrom, chooseMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? whereFrom, bool? chooseMap)? initMainPage,
    TResult Function(bool whereTo)? chooseAddressInMap,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (initMainPage != null) {
      return initMainPage(whereFrom, chooseMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitMainPage value) initMainPage,
    required TResult Function(_ChooseAddressInMap value) chooseAddressInMap,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return initMainPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitMainPage value)? initMainPage,
    TResult? Function(_ChooseAddressInMap value)? chooseAddressInMap,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return initMainPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitMainPage value)? initMainPage,
    TResult Function(_ChooseAddressInMap value)? chooseAddressInMap,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (initMainPage != null) {
      return initMainPage(this);
    }
    return orElse();
  }
}

abstract class _InitMainPage implements MainEvent {
  const factory _InitMainPage(
      {final String? whereFrom, final bool? chooseMap}) = _$InitMainPageImpl;

  String? get whereFrom;
  bool? get chooseMap;
  @JsonKey(ignore: true)
  _$$InitMainPageImplCopyWith<_$InitMainPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChooseAddressInMapImplCopyWith<$Res> {
  factory _$$ChooseAddressInMapImplCopyWith(_$ChooseAddressInMapImpl value,
          $Res Function(_$ChooseAddressInMapImpl) then) =
      __$$ChooseAddressInMapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool whereTo});
}

/// @nodoc
class __$$ChooseAddressInMapImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$ChooseAddressInMapImpl>
    implements _$$ChooseAddressInMapImplCopyWith<$Res> {
  __$$ChooseAddressInMapImplCopyWithImpl(_$ChooseAddressInMapImpl _value,
      $Res Function(_$ChooseAddressInMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whereTo = null,
  }) {
    return _then(_$ChooseAddressInMapImpl(
      whereTo: null == whereTo
          ? _value.whereTo
          : whereTo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChooseAddressInMapImpl implements _ChooseAddressInMap {
  const _$ChooseAddressInMapImpl({required this.whereTo});

  @override
  final bool whereTo;

  @override
  String toString() {
    return 'MainEvent.chooseAddressInMap(whereTo: $whereTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseAddressInMapImpl &&
            (identical(other.whereTo, whereTo) || other.whereTo == whereTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, whereTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseAddressInMapImplCopyWith<_$ChooseAddressInMapImpl> get copyWith =>
      __$$ChooseAddressInMapImplCopyWithImpl<_$ChooseAddressInMapImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? whereFrom, bool? chooseMap) initMainPage,
    required TResult Function(bool whereTo) chooseAddressInMap,
    required TResult Function() createOrder,
  }) {
    return chooseAddressInMap(whereTo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? whereFrom, bool? chooseMap)? initMainPage,
    TResult? Function(bool whereTo)? chooseAddressInMap,
    TResult? Function()? createOrder,
  }) {
    return chooseAddressInMap?.call(whereTo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? whereFrom, bool? chooseMap)? initMainPage,
    TResult Function(bool whereTo)? chooseAddressInMap,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (chooseAddressInMap != null) {
      return chooseAddressInMap(whereTo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitMainPage value) initMainPage,
    required TResult Function(_ChooseAddressInMap value) chooseAddressInMap,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return chooseAddressInMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitMainPage value)? initMainPage,
    TResult? Function(_ChooseAddressInMap value)? chooseAddressInMap,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return chooseAddressInMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitMainPage value)? initMainPage,
    TResult Function(_ChooseAddressInMap value)? chooseAddressInMap,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (chooseAddressInMap != null) {
      return chooseAddressInMap(this);
    }
    return orElse();
  }
}

abstract class _ChooseAddressInMap implements MainEvent {
  const factory _ChooseAddressInMap({required final bool whereTo}) =
      _$ChooseAddressInMapImpl;

  bool get whereTo;
  @JsonKey(ignore: true)
  _$$ChooseAddressInMapImplCopyWith<_$ChooseAddressInMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderImplCopyWith<$Res> {
  factory _$$CreateOrderImplCopyWith(
          _$CreateOrderImpl value, $Res Function(_$CreateOrderImpl) then) =
      __$$CreateOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateOrderImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$CreateOrderImpl>
    implements _$$CreateOrderImplCopyWith<$Res> {
  __$$CreateOrderImplCopyWithImpl(
      _$CreateOrderImpl _value, $Res Function(_$CreateOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateOrderImpl implements _CreateOrder {
  const _$CreateOrderImpl();

  @override
  String toString() {
    return 'MainEvent.createOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? whereFrom, bool? chooseMap) initMainPage,
    required TResult Function(bool whereTo) chooseAddressInMap,
    required TResult Function() createOrder,
  }) {
    return createOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? whereFrom, bool? chooseMap)? initMainPage,
    TResult? Function(bool whereTo)? chooseAddressInMap,
    TResult? Function()? createOrder,
  }) {
    return createOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? whereFrom, bool? chooseMap)? initMainPage,
    TResult Function(bool whereTo)? chooseAddressInMap,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InitMainPage value) initMainPage,
    required TResult Function(_ChooseAddressInMap value) chooseAddressInMap,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_InitMainPage value)? initMainPage,
    TResult? Function(_ChooseAddressInMap value)? chooseAddressInMap,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InitMainPage value)? initMainPage,
    TResult Function(_ChooseAddressInMap value)? chooseAddressInMap,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class _CreateOrder implements MainEvent {
  const factory _CreateOrder() = _$CreateOrderImpl;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? chooseMap) initMain,
    required TResult Function(bool whereTo) openMapForChooseAddress,
    required TResult Function() openOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? chooseMap)? initMain,
    TResult? Function(bool whereTo)? openMapForChooseAddress,
    TResult? Function()? openOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? chooseMap)? initMain,
    TResult Function(bool whereTo)? openMapForChooseAddress,
    TResult Function()? openOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitMain value) initMain,
    required TResult Function(_OpenMapForChooseAddress value)
        openMapForChooseAddress,
    required TResult Function(_OpenOrder value) openOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitMain value)? initMain,
    TResult? Function(_OpenMapForChooseAddress value)? openMapForChooseAddress,
    TResult? Function(_OpenOrder value)? openOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitMain value)? initMain,
    TResult Function(_OpenMapForChooseAddress value)? openMapForChooseAddress,
    TResult Function(_OpenOrder value)? openOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

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
    extends _$MainStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MainState.initial()';
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
    required TResult Function(bool? chooseMap) initMain,
    required TResult Function(bool whereTo) openMapForChooseAddress,
    required TResult Function() openOrder,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? chooseMap)? initMain,
    TResult? Function(bool whereTo)? openMapForChooseAddress,
    TResult? Function()? openOrder,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? chooseMap)? initMain,
    TResult Function(bool whereTo)? openMapForChooseAddress,
    TResult Function()? openOrder,
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
    required TResult Function(_InitMain value) initMain,
    required TResult Function(_OpenMapForChooseAddress value)
        openMapForChooseAddress,
    required TResult Function(_OpenOrder value) openOrder,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitMain value)? initMain,
    TResult? Function(_OpenMapForChooseAddress value)? openMapForChooseAddress,
    TResult? Function(_OpenOrder value)? openOrder,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitMain value)? initMain,
    TResult Function(_OpenMapForChooseAddress value)? openMapForChooseAddress,
    TResult Function(_OpenOrder value)? openOrder,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$InitMainImplCopyWith<$Res> {
  factory _$$InitMainImplCopyWith(
          _$InitMainImpl value, $Res Function(_$InitMainImpl) then) =
      __$$InitMainImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? chooseMap});
}

/// @nodoc
class __$$InitMainImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$InitMainImpl>
    implements _$$InitMainImplCopyWith<$Res> {
  __$$InitMainImplCopyWithImpl(
      _$InitMainImpl _value, $Res Function(_$InitMainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chooseMap = freezed,
  }) {
    return _then(_$InitMainImpl(
      chooseMap: freezed == chooseMap
          ? _value.chooseMap
          : chooseMap // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitMainImpl implements _InitMain {
  const _$InitMainImpl({this.chooseMap});

  @override
  final bool? chooseMap;

  @override
  String toString() {
    return 'MainState.initMain(chooseMap: $chooseMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitMainImpl &&
            (identical(other.chooseMap, chooseMap) ||
                other.chooseMap == chooseMap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chooseMap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitMainImplCopyWith<_$InitMainImpl> get copyWith =>
      __$$InitMainImplCopyWithImpl<_$InitMainImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? chooseMap) initMain,
    required TResult Function(bool whereTo) openMapForChooseAddress,
    required TResult Function() openOrder,
  }) {
    return initMain(chooseMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? chooseMap)? initMain,
    TResult? Function(bool whereTo)? openMapForChooseAddress,
    TResult? Function()? openOrder,
  }) {
    return initMain?.call(chooseMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? chooseMap)? initMain,
    TResult Function(bool whereTo)? openMapForChooseAddress,
    TResult Function()? openOrder,
    required TResult orElse(),
  }) {
    if (initMain != null) {
      return initMain(chooseMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitMain value) initMain,
    required TResult Function(_OpenMapForChooseAddress value)
        openMapForChooseAddress,
    required TResult Function(_OpenOrder value) openOrder,
  }) {
    return initMain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitMain value)? initMain,
    TResult? Function(_OpenMapForChooseAddress value)? openMapForChooseAddress,
    TResult? Function(_OpenOrder value)? openOrder,
  }) {
    return initMain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitMain value)? initMain,
    TResult Function(_OpenMapForChooseAddress value)? openMapForChooseAddress,
    TResult Function(_OpenOrder value)? openOrder,
    required TResult orElse(),
  }) {
    if (initMain != null) {
      return initMain(this);
    }
    return orElse();
  }
}

abstract class _InitMain implements MainState {
  const factory _InitMain({final bool? chooseMap}) = _$InitMainImpl;

  bool? get chooseMap;
  @JsonKey(ignore: true)
  _$$InitMainImplCopyWith<_$InitMainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenMapForChooseAddressImplCopyWith<$Res> {
  factory _$$OpenMapForChooseAddressImplCopyWith(
          _$OpenMapForChooseAddressImpl value,
          $Res Function(_$OpenMapForChooseAddressImpl) then) =
      __$$OpenMapForChooseAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool whereTo});
}

/// @nodoc
class __$$OpenMapForChooseAddressImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$OpenMapForChooseAddressImpl>
    implements _$$OpenMapForChooseAddressImplCopyWith<$Res> {
  __$$OpenMapForChooseAddressImplCopyWithImpl(
      _$OpenMapForChooseAddressImpl _value,
      $Res Function(_$OpenMapForChooseAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whereTo = null,
  }) {
    return _then(_$OpenMapForChooseAddressImpl(
      whereTo: null == whereTo
          ? _value.whereTo
          : whereTo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OpenMapForChooseAddressImpl implements _OpenMapForChooseAddress {
  const _$OpenMapForChooseAddressImpl({required this.whereTo});

  @override
  final bool whereTo;

  @override
  String toString() {
    return 'MainState.openMapForChooseAddress(whereTo: $whereTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenMapForChooseAddressImpl &&
            (identical(other.whereTo, whereTo) || other.whereTo == whereTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, whereTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenMapForChooseAddressImplCopyWith<_$OpenMapForChooseAddressImpl>
      get copyWith => __$$OpenMapForChooseAddressImplCopyWithImpl<
          _$OpenMapForChooseAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? chooseMap) initMain,
    required TResult Function(bool whereTo) openMapForChooseAddress,
    required TResult Function() openOrder,
  }) {
    return openMapForChooseAddress(whereTo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? chooseMap)? initMain,
    TResult? Function(bool whereTo)? openMapForChooseAddress,
    TResult? Function()? openOrder,
  }) {
    return openMapForChooseAddress?.call(whereTo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? chooseMap)? initMain,
    TResult Function(bool whereTo)? openMapForChooseAddress,
    TResult Function()? openOrder,
    required TResult orElse(),
  }) {
    if (openMapForChooseAddress != null) {
      return openMapForChooseAddress(whereTo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitMain value) initMain,
    required TResult Function(_OpenMapForChooseAddress value)
        openMapForChooseAddress,
    required TResult Function(_OpenOrder value) openOrder,
  }) {
    return openMapForChooseAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitMain value)? initMain,
    TResult? Function(_OpenMapForChooseAddress value)? openMapForChooseAddress,
    TResult? Function(_OpenOrder value)? openOrder,
  }) {
    return openMapForChooseAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitMain value)? initMain,
    TResult Function(_OpenMapForChooseAddress value)? openMapForChooseAddress,
    TResult Function(_OpenOrder value)? openOrder,
    required TResult orElse(),
  }) {
    if (openMapForChooseAddress != null) {
      return openMapForChooseAddress(this);
    }
    return orElse();
  }
}

abstract class _OpenMapForChooseAddress implements MainState {
  const factory _OpenMapForChooseAddress({required final bool whereTo}) =
      _$OpenMapForChooseAddressImpl;

  bool get whereTo;
  @JsonKey(ignore: true)
  _$$OpenMapForChooseAddressImplCopyWith<_$OpenMapForChooseAddressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenOrderImplCopyWith<$Res> {
  factory _$$OpenOrderImplCopyWith(
          _$OpenOrderImpl value, $Res Function(_$OpenOrderImpl) then) =
      __$$OpenOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenOrderImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$OpenOrderImpl>
    implements _$$OpenOrderImplCopyWith<$Res> {
  __$$OpenOrderImplCopyWithImpl(
      _$OpenOrderImpl _value, $Res Function(_$OpenOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OpenOrderImpl implements _OpenOrder {
  const _$OpenOrderImpl();

  @override
  String toString() {
    return 'MainState.openOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? chooseMap) initMain,
    required TResult Function(bool whereTo) openMapForChooseAddress,
    required TResult Function() openOrder,
  }) {
    return openOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? chooseMap)? initMain,
    TResult? Function(bool whereTo)? openMapForChooseAddress,
    TResult? Function()? openOrder,
  }) {
    return openOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? chooseMap)? initMain,
    TResult Function(bool whereTo)? openMapForChooseAddress,
    TResult Function()? openOrder,
    required TResult orElse(),
  }) {
    if (openOrder != null) {
      return openOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InitMain value) initMain,
    required TResult Function(_OpenMapForChooseAddress value)
        openMapForChooseAddress,
    required TResult Function(_OpenOrder value) openOrder,
  }) {
    return openOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InitMain value)? initMain,
    TResult? Function(_OpenMapForChooseAddress value)? openMapForChooseAddress,
    TResult? Function(_OpenOrder value)? openOrder,
  }) {
    return openOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InitMain value)? initMain,
    TResult Function(_OpenMapForChooseAddress value)? openMapForChooseAddress,
    TResult Function(_OpenOrder value)? openOrder,
    required TResult orElse(),
  }) {
    if (openOrder != null) {
      return openOrder(this);
    }
    return orElse();
  }
}

abstract class _OpenOrder implements MainState {
  const factory _OpenOrder() = _$OpenOrderImpl;
}
