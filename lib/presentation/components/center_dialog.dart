import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

Future centerDialog({
  required BuildContext context,
  required String text,
  required String nameNextButton,
  required VoidCallback onPressed,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return Platform.isAndroid
          ? AlertDialog(
              title: Text(
                text,
                style: AppTheme.data.textTheme.headlineSmall,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "cancel",
                    style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                  ),
                ),
                TextButton(
                  onPressed: onPressed,
                  child: Text(
                    nameNextButton,
                    style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.primary),
                  ),
                ),
              ],
            )
          : CupertinoAlertDialog(
              title: Text(
                text,
                style: AppTheme.data.textTheme.headlineSmall,
              ),
              actions: <Widget>[
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  isDefaultAction: true,
                  child: Text(
                    "cancel",
                    style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                  ),
                ),
                CupertinoDialogAction(
                  onPressed: onPressed,
                  child: Text(
                    nameNextButton,
                    style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.primary),
                  ),
                ),
              ],
            );
    },
  );
}
