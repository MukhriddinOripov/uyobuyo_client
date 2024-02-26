import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/user_data_model.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/drawer/drawel_model.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';
import 'entity/pages.dart';

GoRouter get router => _router;

final GoRouter _router = GoRouter(
  initialLocation: Routes.splashPage.path,
  debugLogDiagnostics: kDebugMode,
  routes: <GoRoute>[
    GoRoute(
      name: Routes.splashPage.name,
      path: Routes.splashPage.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const SplashPage(),
      ),
    ),
    GoRoute(
      name: Routes.onboardPage.name,
      path: Routes.onboardPage.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const OnboardPage(),
      ),
    ),
    GoRoute(
      name: Routes.checkPhonePage.name,
      path: Routes.checkPhonePage.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const CheckPhonePage(),
      ),
    ),
    GoRoute(
      name: Routes.otpPage.name,
      path: Routes.otpPage.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: OtpPage(params: state.extra),
      ),
    ),
    GoRoute(
      name: Routes.registerPage.name,
      path: Routes.registerPage.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const RegisterPage(),
      ),
    ),
    GoRoute(
      name: Routes.mainPage.name,
      path: Routes.mainPage.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const MainPage(),
      ),
    ),
    GoRoute(
      name: Routes.orderDetailAfterCreatePage.name,
      path: Routes.orderDetailAfterCreatePage.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const OrderDetailAfterCreatePage(),
      ),
    ),
    GoRoute(
      name: Routes.orderCancelPage.name,
      path: Routes.orderCancelPage.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const OrderCancelPage(),
      ),
    ),
    GoRoute(
      name: Routes.orderHistoryModule.name,
      path: Routes.orderHistoryModule.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const OrderHistoryModule(),
      ),
    ),
    GoRoute(
      name: Routes.orderHistoryDetailModule.name,
      path: Routes.orderHistoryDetailModule.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const OrderHistoryDetailModule(),
      ),
    ),
    GoRoute(
      name: Routes.profileDetailModule.name,
      path: Routes.profileDetailModule.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const ProfileDetailModule(),
      ),
    ),
    GoRoute(
      name: Routes.editProfileModule.name,
      path: Routes.editProfileModule.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: EditProfileModule(extra: (state.extra as Map<String, dynamic>)["userData"] as UserData),
      ),
    ),
    GoRoute(
      name: Routes.settingModule.name,
      path: Routes.settingModule.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const SettingModule(),
      ),
    ),
    GoRoute(
      name: Routes.supportModule.name,
      path: Routes.supportModule.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const SupportModule(),
      ),
    ),
    GoRoute(
      name: Routes.faqModule.name,
      path: Routes.faqModule.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const FAQModule(),
      ),
    ),
    GoRoute(
      name: Routes.faqDetailModule.name,
      path: Routes.faqDetailModule.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: FAQDetailModule(data: (state.extra as Map<String, dynamic>)["data"] as DrawerData),
      ),
    ),
  ],
  errorBuilder: (context, state) {
    return Scaffold(
      body: Center(
        child: Text(
          state.error.toString(),
        ),
      ),
    );
  },
);
