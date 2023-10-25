part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;

  const factory MainState.initMain({bool? chooseMap }) = _InitMain;

  const factory MainState.openMapForChooseAddress({required bool whereTo}) = _OpenMapForChooseAddress;

  const factory MainState.openOrder() = _OpenOrder;
}
