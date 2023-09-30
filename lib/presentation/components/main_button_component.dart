import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

class MainButtonComponent extends StatelessWidget {
  const MainButtonComponent({
    Key? key,
    required this.name,
    required this.onPressed,
    this.margin,
    this.backgroundColor,
    this.borderRadius,
    this.height,
    this.textColor,
    this.width,
    this.action,
    this.trailing,
    this.mainAxisAlignment,
  }) : super(key: key);

  final String name;
  final VoidCallback onPressed;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final Color? textColor;
  final double? borderRadius;
  final double? width;
  final double? height;
  final Widget? action;
  final Widget? trailing;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onPressed: onPressed,
      duration: const Duration(milliseconds: kBounceAnimDuration),
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 44,
        margin: margin,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppTheme.colors.primary,
          borderRadius: BorderRadius.circular(borderRadius ?? kBorderRadiusDefault.r),
        ),
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          children: [
            action ?? const SizedBox(),
            Text(
              name,
              style: AppTheme.data.textTheme.headlineSmall?.copyWith(
                color: textColor ?? AppTheme.colors.black,
              ),
            ),
            trailing ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
