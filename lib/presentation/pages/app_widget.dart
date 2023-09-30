import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:uyobuyo_client/application/app_manager/app_manager_cubit.dart';
import 'package:uyobuyo_client/application/language_provider.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/l10n.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/routes/go_router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppManagerCubit, AppManagerState>(
      listener: (context, state) {},
      buildWhen: (context, state) {
        return state is AppManagerLoaded || state is AppManagerLoading;
      },
      builder: (context, state) {
        if (state is AppManagerLoaded) {
          AppManagerCubit.router = router;
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: MaterialApp.router(
              title: 'Open App',
              theme: AppTheme.data,
              themeMode: AppTheme.themeType,
              locale: Provider.of<LanguageProvider>(context).locale,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: L10n.all,
              localeResolutionCallback: (locale, supportedLocales) {
                for (var supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale?.languageCode &&
                      supportedLocale.countryCode == locale?.countryCode) {
                    return supportedLocale;
                  }
                }
                return supportedLocales.first;
              },
              routeInformationParser: router.routeInformationParser,
              routeInformationProvider: router.routeInformationProvider,
              routerDelegate: router.routerDelegate,
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    textScaleFactor: 1,
                    boldText: false,
                  ),
                  child: child!,
                );
              },
            ),
          );
        } else if (state is AppManagerLoading) {
          return const SizedBox();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
