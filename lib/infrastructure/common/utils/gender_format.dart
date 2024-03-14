import 'package:flutter/material.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';

String gender({required BuildContext context, required String gender}) {
  String result = "";
  if (gender == "MALE") {
    result = context.loc.man;
  } else if (gender == "FEMALE") {
    result = context.loc.woman;
  }
  return result;
}
