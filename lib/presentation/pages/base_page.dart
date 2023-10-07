import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

abstract class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);
}

abstract class BaseState<T extends BaseScreen> extends State<T> {
  BuildContext? _dialogContext;

  void showLoading({bool needLoading = true, String? message}) {
    if (needLoading) {
      showDialog(
        barrierColor: AppTheme.colors.black.withOpacity(0.4),
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          _dialogContext = context;
          return Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
              alignment: AlignmentDirectional.center,
              decoration: const BoxDecoration(),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        },
      );
    } else {
      hideLoading();
    }
  }

  void hideLoading() {
    if (_dialogContext != null) {
      Navigator.of(_dialogContext!).pop();
      _dialogContext = null;
    }
  }

  void showMessage(String text, {Function? onOkTap, bool isRepeat = false, bool noBack = false}) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(text),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                if (!noBack) {
                  Navigator.pop(context);
                }
                if (onOkTap != null) {
                  onOkTap();
                }
              },
              child: const Text(
                'OK',
              ),
            ),
          ],
        );
      },
    );
  }

  void showMessageWithTitle(String title, String text, {Function? onOkTap, bool isRepeat = false, bool noBack = false}) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: Text(text),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                if (!noBack) {
                  Navigator.pop(context);
                }
                if (onOkTap != null) {
                  onOkTap();
                }
              },
              child: const Text(
                'OK',
              ),
            ),
          ],
        );
      },
    );
  }

  void showYesNo(String title, {String? text, Function? onOkTap, bool isRepeat = false, bool noBack = false}) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: text == null ? null : Text(text),
          actions: [
            CupertinoDialogAction(
                isDestructiveAction: true,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'No',
                )),
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                if (!noBack) {
                  Navigator.pop(context);
                }
                if (onOkTap != null) {
                  onOkTap();
                }
              },
              child: const Text(
                'Yes',
              ),
            ),
          ],
        );
      },
    );
  }

  void showDialogSuccess(
    String title,
    String subtitle,
  ) {}
}

abstract class BaseBlocState {
  var isLoading = false;
  var hasMessage = false;
  var hasErrorMessage = false;
}

abstract class BaseBlocEvent {}

class BaseLoadingState extends BaseBlocState {}
