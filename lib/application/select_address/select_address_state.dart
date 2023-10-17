part of 'select_address_cubit.dart';

@immutable
abstract class SelectAddressState {}

class SelectAddressInitial extends SelectAddressState {}

class SelectAddressFrom extends SelectAddressState {
  final String address;
  final String subAddress;

  SelectAddressFrom({required this.address, required this.subAddress});
}

class SelectAddressTo extends SelectAddressState {
  final String address;
  final String subAddress;

  SelectAddressTo({required this.address, required this.subAddress});
}
