import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
