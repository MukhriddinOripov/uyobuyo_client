import 'package:flutter/material.dart';

abstract class BaseColors {
  const BaseColors();

  Color get primary => const Color.fromRGBO(255, 190, 45, 1);
  Color get primary5 => const Color.fromRGBO(255, 252, 244, 1);
  Color get primary20 => const Color.fromRGBO(255, 242, 213, 1);
  Color get primary40 => const Color.fromRGBO(255, 229, 171, 1);
  Color get primary60 => const Color.fromRGBO(255, 216, 129, 1);
  Color get primary80 => const Color.fromRGBO(255, 203, 87, 1);

  Color get blue => const Color.fromRGBO(31, 51, 173, 1);
  Color get blue5 => const Color.fromRGBO(244, 245, 251, 1);
  Color get blue20 => const Color.fromRGBO(210, 214, 239, 1);
  Color get blue40 => const Color.fromRGBO(165, 173, 222, 1);
  Color get blue60 => const Color.fromRGBO(121, 133, 206, 1);
  Color get blue80 => const Color.fromRGBO(76, 92, 189, 1);

  Color get black80 => const Color.fromRGBO(57, 62, 84, 1);
  Color get black60 => const Color.fromRGBO(106, 110, 127, 1);
  Color get black40 => const Color.fromRGBO(156, 159, 169, 1);
  Color get black20 => const Color.fromRGBO(205, 207, 212, 1);
  Color get black5 => const Color.fromRGBO(243, 243, 244, 1);
  Color get black => const Color.fromRGBO(0, 0, 0, 1);
  Color get dark => const Color.fromRGBO(7, 14, 41, 1);
  Color get white => const Color.fromRGBO(255, 255, 255, 1);

  Color get red => const Color.fromRGBO(173, 31, 31, 1);
  Color get red5 => const Color.fromRGBO(251, 244, 244, 1);
  Color get red20 => const Color.fromRGBO(239, 210, 210, 1);
  Color get red40 => const Color.fromRGBO(222, 165, 165, 1);
  Color get red60 => const Color.fromRGBO(206, 121, 121, 1);
  Color get red80 => const Color.fromRGBO(189, 76, 76, 1);

  Color get green => const Color.fromRGBO(31, 173, 96, 1);
  Color get green5 => const Color.fromRGBO(244, 251, 247, 1);
  Color get green20 => const Color.fromRGBO(210, 239, 223, 1);
  Color get green40 => const Color.fromRGBO(165, 222, 191, 1);
  Color get green60 => const Color.fromRGBO(121, 206, 160, 1);
  Color get green80 => const Color.fromRGBO(76, 189, 128, 1);



  Color get text900;
  Color get text500;
  Color get fillColor;
  Color get background;
  Color get headerBackground;
  Color get surface;
  Color get checkBackClr;
  Color get checkItemClr;
}
