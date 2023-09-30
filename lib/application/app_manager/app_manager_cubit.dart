import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

part 'app_manager_state.dart';

late String phoneNumber;

class AppManagerCubit extends Cubit<AppManagerState> {
  static GoRouter? router;
  static bool isBiometricVer = true;

  AppManagerCubit() : super(AppManagerInitial());

  Future<void> initApp() async {
    emit(AppManagerInitial());
    SharedPrefService prefs = await SharedPrefService.initialize();
    try {
      await AppTheme.init();

      phoneNumber = prefs.getUserPhone;
      //
      // await NetworkProvider.init().then((value) async {
      //   Dio(options).get(NetworkProvider.routes.user).then(
      //         (value) => print("line 30: $value"),
      //       );
      // });
      emit(AppManagerLoaded());
    } catch (e) {
      print("line 19: $e");
    }
  }

  Future<void> updateAppTheme(String theme) async {
    emit(AppManagerLoading());
    await Future.delayed(const Duration(milliseconds: 500));
    SharedPrefService prefs = await SharedPrefService.initialize();
    prefs.setTheme(theme);
    try {
      await AppTheme.init();
      emit(AppManagerLoaded());
    } catch (_) {}
  }
}
