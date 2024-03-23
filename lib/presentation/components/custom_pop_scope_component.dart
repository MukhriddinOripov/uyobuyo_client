import 'dart:io';
import 'package:flutter/material.dart';

class CustomPopScope extends StatelessWidget {
  const CustomPopScope({required this.child, this.canPop = false, super.key, required this.action});

  final Widget child;
  final bool canPop;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? GestureDetector(
            onPanEnd: (details) {
              if (details.velocity.pixelsPerSecond.dx < 0 || details.velocity.pixelsPerSecond.dx > 0) {
                if (!canPop) {
                  action();
                }
              }
            },
            child: PopScope(
              canPop: canPop,
              child: child,
            ),
          )
        : PopScope(
            canPop: canPop,
            onPopInvoked: (bool didPop) {
              if (!didPop) {
                action();
              }
            },
            child: child);
  }
}
