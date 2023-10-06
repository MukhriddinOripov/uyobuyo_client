import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:provider/provider.dart';
import 'package:uyobuyo_client/application/app_manager/app_manager_cubit.dart';
import 'package:uyobuyo_client/application/auth/auth_bloc.dart';
import 'package:uyobuyo_client/application/language_provider.dart';
import 'package:uyobuyo_client/presentation/pages/app_widget.dart';
import 'firebase_options.dart';

late final InternetConnectionChecker customInstance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "uyoBuyo",
    options: DefaultFirebaseOptions.currentPlatform,
  );

  customInstance = InternetConnectionChecker.createInstance(
      checkTimeout: const Duration(milliseconds: 1500), // Custom check timeout
      checkInterval: const Duration(seconds: 2), // Custom check interval
      addresses: [
        AddressCheckOptions(
          address: InternetAddress(
            '8.8.4.4', // Google
            type: InternetAddressType.IPv4,
          ),
        ),
        AddressCheckOptions(
          address: InternetAddress(
            '216.58.214.174', // Google
            type: InternetAddressType.IPv4,
          ),
        ),
        AddressCheckOptions(
          address: InternetAddress(
            '62.217.160.2', // Google
            type: InternetAddressType.IPv4,
          ),
        ),
        AddressCheckOptions(
          address: InternetAddress(
            '5.255.255.77', // Google
            type: InternetAddressType.IPv4,
          ),
        ),
      ]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppManagerCubit()..initApp(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => LanguageProvider()..appStarted(),
            ),
          ],
          child: const AppWidget(),
        ),
      ),
    );
  }
}
