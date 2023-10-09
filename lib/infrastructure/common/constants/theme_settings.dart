import 'dart:ui';

import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';

const Map<String, Map<String, Color>> constantColors = {
  SharedPrefService.lightTheme: {
    ColorNames.text900: Color.fromRGBO(0, 0, 0, 1),
    ColorNames.text500: Color.fromRGBO(162, 160, 168, 1),
    ColorNames.fillColor: Color.fromRGBO(118, 118, 128, 0.08),
    ColorNames.checkBackClr: Color.fromRGBO(245, 247, 254, 1),
    ColorNames.checkItemClr: Color.fromRGBO(255, 255, 255, 1),
    ColorNames.background: Color.fromRGBO(255, 255, 255, 1),
  },
  SharedPrefService.darkTheme: {
    ColorNames.text900: Color.fromRGBO(255, 255, 255, 1),
    ColorNames.text500: Color.fromRGBO(162, 160, 168, 1),
    ColorNames.fillColor: Color.fromRGBO(33, 31, 50, 1),
    ColorNames.checkBackClr: Color.fromRGBO(33, 31, 50, 1),
    ColorNames.checkItemClr: Color.fromRGBO(50, 48, 69, 1),
    ColorNames.background: Color.fromRGBO(50, 48, 69, 1),
  }
};

class ColorNames {
  static const primary = 'primary';

  // static const primary15 = 'primary_15';
  static const background = 'bg';
  static const surfaceElevated2 = 'surface_elevated_2';
  static const fillColor = 'fill_color';
  static const text900 = 'text-900';
  static const text500 = 'text-500';
  static const checkBackClr = 'check_back_clr';
  static const checkItemClr = 'check_item_clr';
}
