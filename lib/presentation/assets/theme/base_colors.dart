import 'package:flutter/material.dart';

abstract class BaseColors {
  const BaseColors();

  Color get primary => const Color.fromRGBO(255, 190, 45, 1);
  Color get primary5 => const Color.fromRGBO(244, 252, 249, 1);
  Color get primary10 => const Color.fromRGBO(234, 249, 244, 1);
  Color get primary20 => const Color.fromRGBO(213, 243, 232, 1);
  Color get primary60 => const Color.fromRGBO(129, 218, 187, 1);
  Color get primary90 => const Color.fromRGBO(66, 201, 153, 1);


  Color get containerBlack => const Color.fromRGBO(118, 118, 128, 0.08);

  Color get blue => const Color.fromRGBO(77, 129, 181, 1);
  Color get black => const Color.fromRGBO(21, 20, 31, 1);
  Color get black90 => const Color.fromRGBO(33, 31, 50, 1);
  Color get black80 => const Color.fromRGBO(82, 82, 92, 1);
  Color get black60 => const Color.fromRGBO(162, 160, 168, 1);
  Color get black40 => const Color.fromRGBO(204, 202, 207, 1);
  Color get black20 => const Color.fromRGBO(220, 219, 224, 1);
  Color get black10 => const Color.fromRGBO(232, 232, 232, 1);
  Color get black8 => const Color.fromRGBO(240, 240, 240, 1);
  Color get black5 => const Color.fromRGBO(249, 249, 250, 1);
  Color get white => const Color.fromRGBO(255, 255, 255, 1);
  Color get red => const Color.fromRGBO(255, 80, 40, 1);
  Color get errorDark => const Color.fromRGBO(210, 50, 50, 1);
  Color get border => const Color.fromRGBO(233, 234, 237, 1);
  Color get grey => const Color.fromRGBO(12, 32, 115, 0.1);
  Color get blueGem => const Color.fromRGBO(78, 15, 138, 1);
 Color get selago => const Color.fromRGBO(245,247,254, 1);
 Color get  greyScale => const Color.fromRGBO(250,250,250, 1);

  Color get text900;
  Color get text500;
  Color get fillColor;
  Color get background;
  Color get headerBackground;
  Color get surface;
  Color get checkBackClr;
  Color get checkItemClr;
}
