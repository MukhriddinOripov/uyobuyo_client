part of 'drawer_bloc.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState.initial() = _Initial;

  const factory DrawerState.loading({required bool loading}) = _Loading;

  const factory DrawerState.loadedFAQ({List<DrawerData>? data}) = _LoadedFAQ;

  const factory DrawerState.loadedInfo({List<DrawerData>? data}) = _LoadedInfo;

  const factory DrawerState.loadedSupport({List<DrawerData>? data}) = _LoadedSupport;

  const factory DrawerState.drawerError({String? msg}) = _DrawerError;

  const factory DrawerState.error({
    required String error,
    required ExceptionType serverException,
  }) = _Error;
}
