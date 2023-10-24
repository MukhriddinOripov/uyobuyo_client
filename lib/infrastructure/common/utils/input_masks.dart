import 'dart:math';

import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final mPhoneNumber = MaskTextInputFormatter(mask: "## ### ## ##", filter: {"#": RegExp(r'[0-9]')});

final mCardPan = MaskTextInputFormatter(mask: "#### #### #### ####", filter: {"#": RegExp(r'[0-9]')});

final mCardExpiry = MaskTextInputFormatter(mask: "##/##", filter: {"#": RegExp(r'[0-9]')});

// final mDate = MaskTextInputFormatter(mask: "&#.*#.%###", filter: {"*": RegExp(r'[0-1]'), "&": RegExp(r'[0-3]'),"%": RegExp(r'[1-2]'), "#": RegExp(r'[0-9]')});

class DateTextFormatter extends TextInputFormatter {
  static const _maxChars = 8;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String separator = '.';
    var text = _format(
      newValue.text,
      oldValue.text,
      separator,
    );

    return newValue.copyWith(
      text: text,
      selection: updateCursorPosition(
        oldValue,
        text,
      ),
    );
  }

  String _format(
    String value,
    String oldValue,
    String separator,
  ) {
    var isErasing = value.length < oldValue.length;

    if (!isErasing) {
      // Validate Day Range
      if (value.length >= 2) {
        int day = int.parse(value.substring(0, 1));
        if (day < 1 || day > 31) {
          return oldValue;
        }
      }

      // Validate Month Range
      if (value.length >= 5) {
        int month = int.parse(value.substring(3, 5));
        if (month < 1 || month > 12) {
          return oldValue;
        }
      }

      // Validate Year Range
      if (value.length >= 8) {
        int year = int.parse(value.substring(6, 10));
        if (year < 1950 || year > DateTime.now().year) {
          return oldValue;
        }
      }
    }

    value = value.replaceAll(separator, '');
    final result = <String>[];

    for (int i = 0; i < min(value.length, _maxChars); i++) {
      result.add(value[i]);
      if ((i == 1 || i == 3) && i != value.length - 1) {
        result.add(separator);
      }
    }

    return result.join();
  }

  TextSelection updateCursorPosition(
    TextEditingValue oldValue,
    String text,
  ) {
    var endOffset = max(
      oldValue.text.length - oldValue.selection.end,
      0,
    );

    var selectionEnd = text.length - endOffset;

    return TextSelection.fromPosition(TextPosition(offset: selectionEnd));
  }
}
