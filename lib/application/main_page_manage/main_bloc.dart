import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';

part 'main_state.dart';

part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  static String? whereFromAddress;
  static String? whereFromSubAddress;
  static String? whereToAddress;
  static String? whereToSubAddress;

  MainBloc() : super(const MainState.initial()) {
    on<_InitMainPage>(_initMainPage);
    on<_ChooseAddressInMap>(_chooseAddressInMap);
    on<_CreateOrder>(_createOrder);
  }

  Future _initMainPage(_InitMainPage event, Emitter<MainState> emit) async {
    try {
      emit(MainState.initMain(chooseMap: event.chooseMap));
    } catch (_) {}
  }

  Future _chooseAddressInMap(_ChooseAddressInMap event, Emitter<MainState> emit) async {
    try {
      emit(MainState.openMapForChooseAddress(whereTo: event.whereTo));
    } catch (_) {}
  }

  Future _createOrder(_CreateOrder event, Emitter<MainState> emit) async {
    try {
      emit(const MainState.openOrder());
    } catch (_) {}
  }
}
