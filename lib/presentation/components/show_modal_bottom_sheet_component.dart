import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';

Future<void> showModalBottomSheetComponent({
  required BuildContext context,
  required String title,
  required String subtitle,
  String? btnTitle,
  Function()? onTap,
}) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32.r),
        topRight: Radius.circular(32.r),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          top: 12.h,
          left: 16.w,
          right: 16.w,
          bottom: 49.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 6.h,
              width: 48.w,
              decoration: BoxDecoration(
                color: const Color(0xFFE3E8FC),
                borderRadius: BorderRadius.circular(24.r),
              ),
            ),
            SizedBox(height: 32.h),
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppTheme.colors.fillColor,
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                width: 99.w,
                height: 99.h,
                child: Center(
                    child: Icon(
                  Icons.close,
                  size: 54,
                  color: AppTheme.colors.red,
                )),
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              title,
              style: AppTheme.data.textTheme.displaySmall,
            ),
            const SizedBox(height: 4),
            Text(subtitle, style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.text500)),
            SizedBox(height: 32.h),
            MainButtonComponent(
              name: btnTitle ?? 'back',
              onPressed: onTap ?? () => Navigator.pop(context),
            ),
          ],
        ),
      );
    },
  );
}
