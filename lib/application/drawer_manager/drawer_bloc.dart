import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uyobuyo_client/infrastructure/dto/exceptions/server_exception.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/drawer/drawel_model.dart';
import 'package:uyobuyo_client/infrastructure/repositories/drawer/drawer_repository.dart';

part 'drawer_event.dart';

part 'drawer_state.dart';

part 'drawer_bloc.freezed.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerRepository repository = const DrawerRepository();

  DrawerBloc() : super(const DrawerState.initial()) {
    on<_GetFAQ>(_getFAQ, transformer: droppable());
    on<_GetInfo>(_getInfo, transformer: droppable());
    on<_GetSupport>(_getSupport, transformer: droppable());
  }

  Future _getFAQ(_GetFAQ event, Emitter<DrawerState> emit) async {
    emit(const DrawerState.loading(loading: true));
    try {
      final data = await repository.getFAQ();
      emit(const DrawerState.loading(loading: false));
      if (data.success) {
        emit(DrawerState.loadedFAQ(data: data.data));
      }
    } catch (e) {
      emit(const DrawerState.loading(loading: false));
      emit(
        DrawerState.error(
          error: e.toString(),
          serverException: getExceptionType(error: e),
        ),
      );
    }
  }

  Future _getInfo(_GetInfo event, Emitter<DrawerState> emit) async {
    emit(const DrawerState.loading(loading: true));
    try {
      final data = await repository.getInfo();
      emit(const DrawerState.loading(loading: false));
      if (data.success) {
        emit(DrawerState.loadedInfo(data: data.data));
      }
    } catch (e) {
      emit(const DrawerState.loading(loading: false));
      emit(
        DrawerState.error(
          error: e.toString(),
          serverException: getExceptionType(error: e),
        ),
      );
    }
  }

  Future _getSupport(_GetSupport event, Emitter<DrawerState> emit) async {
    emit(const DrawerState.loading(loading: true));
    try {
      final data = await repository.getSupport();
      emit(const DrawerState.loading(loading: false));
      if (data.success) {
        emit(DrawerState.loadedSupport(data: data.data));
      }
    } catch (e) {
      emit(const DrawerState.loading(loading: false));
      emit(
        DrawerState.error(
          error: e.toString(),
          serverException: getExceptionType(error: e),
        ),
      );
    }
  }
}
