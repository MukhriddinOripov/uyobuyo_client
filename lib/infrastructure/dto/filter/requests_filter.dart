import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';

class RequestsFilter {
  const RequestsFilter();

  String fPhoneNumber(String phone) {
    return phone.replaceAll(RegExp(r'[\s]|[+]'), '');
  }

  static String fDayOfMonth({required DateTime date, required BuildContext context}) {
    return DateFormat("dd MMMM", context.loc.localeName).format(date);
  }

  static String fDateTime(DateTime date) {
    return DateFormat("HH:mm").format(date);
  }
}
