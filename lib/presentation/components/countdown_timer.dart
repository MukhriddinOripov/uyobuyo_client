import 'package:flutter/material.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

class OtpTimer extends StatelessWidget {
  final AnimationController controller;
  final double fontSize;
  final Color? timeColor;

  const OtpTimer({super.key, required this.controller, required this.fontSize, this.timeColor});

  String get timerString {
    Duration duration = controller.duration! * controller.value;
    if (duration.inHours > 0) {
      return '${duration.inHours}:${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
    }
    return '${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  // Duration get duration {
  //   Duration duration = controller.duration!;
  //   return duration;
  // }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) {
        return Text(
          timerString,
          style: AppTheme.data.textTheme.bodySmall?.copyWith(
            color: AppTheme.colors.black60,
            fontSize: fontSize,
          ),
        );
      },
    );
  }
}
