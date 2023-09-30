import 'package:flutter/material.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/l10n.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';

class LanguageProvider extends ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  Future<void> setLocale(Locale locale) async {
    if (!L10n.all.contains(locale)) return;
    SharedPrefService prefs = await SharedPrefService.initialize();
    prefs.setLang(locale.languageCode);
    _locale = locale;
    notifyListeners();
  }

  Future<void> appStarted() async {
    SharedPrefService prefs = await SharedPrefService.initialize();
    final String locale = prefs.getLanguage;
    if (locale.isEmpty) {
      _locale = const Locale('ru');
    } else {
      _locale = Locale(locale);
    }
    notifyListeners();
  }
}
