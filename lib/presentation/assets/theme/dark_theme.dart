import 'package:flutter/material.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/theme_settings.dart';

import 'base_colors.dart';

class DarkTheme extends BaseColors {
  final Map<String, Color> constColors;

  DarkTheme({required this.constColors});

  @override
  Color get background => const Color.fromRGBO(21, 20, 31, 1);

  @override
  Color get surface => const Color.fromRGBO(51, 49, 73, 1);

  @override
  Color get text500 => constColors[ColorNames.text500]!;

  @override
  Color get text900 => constColors[ColorNames.text900]!;

  @override
  Color get fillColor => constColors[ColorNames.fillColor]!;

  @override
  Color get checkBackClr => constColors[ColorNames.checkBackClr]!;

  @override
  Color get checkItemClr => constColors[ColorNames.checkItemClr]!;

  @override
  Color get headerBackground => const Color.fromRGBO(118, 118, 128, 0.08);
}
