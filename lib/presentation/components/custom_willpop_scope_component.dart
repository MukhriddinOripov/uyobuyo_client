import 'dart:io';
import 'package:flutter/material.dart';

class CustomWillPopScope extends StatelessWidget {
  const CustomWillPopScope({required this.child, this.onWillPop = false, Key? key, required this.action})
      : super(key: key);

  final Widget child;
  final bool onWillPop;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? GestureDetector(
            onPanEnd: (details) {
              if (details.velocity.pixelsPerSecond.dx < 0 || details.velocity.pixelsPerSecond.dx > 0) {
                if (onWillPop) {
                  action();
                }
              }
            },
            child: WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: child,
            ),
          )
        : WillPopScope(
            child: child,
            onWillPop: () async {
              action();
              return false;
            },
          );
  }
}
