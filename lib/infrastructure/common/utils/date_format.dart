import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';

class CustomDateFormat {
  static String fMonthYear({required DateTime date, required BuildContext context}) {
    return DateFormat('dd.MM.yyyy', context.loc.localeName).format(date);
  }
}
