part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.started() = _Started;

  const factory MainEvent.initMainPage({String? whereFrom}) = _InitMainPage;

  const factory MainEvent.chooseAddressInMap({required bool whereTo}) = _ChooseAddressInMap;
  const factory MainEvent.createOrder() = _CreateOrder;
}
