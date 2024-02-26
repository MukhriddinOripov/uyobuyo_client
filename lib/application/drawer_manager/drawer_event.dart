part of 'drawer_bloc.dart';

@freezed
class DrawerEvent with _$DrawerEvent {
  const factory DrawerEvent.getFAQ() = _GetFAQ;

  const factory DrawerEvent.getInfo() = _GetInfo;

  const factory DrawerEvent.getSupport() = _GetSupport;
}
