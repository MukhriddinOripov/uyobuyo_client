import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'select_address_state.dart';

class SelectAddressCubit extends Cubit<SelectAddressState> {
  SelectAddressCubit() : super(SelectAddressInitial());

  Future<void> getAddress({required bool isFrom, required String address, required String subAddress}) async {
    emit(SelectAddressInitial());

    if (!isFrom) {
      emit(SelectAddressTo(address: address, subAddress: subAddress));
    } else {
      emit(SelectAddressFrom(address: address, subAddress: subAddress));
    }
  }
}
