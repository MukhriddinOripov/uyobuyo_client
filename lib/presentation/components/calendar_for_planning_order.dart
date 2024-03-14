import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

Future<void> calendarForPlanningOrder({
  required BuildContext context,
  required Function(DateTime val) selectedDate,
}) {
  DateTime date = DateTime.now();

  DateTime todayDate = DateTime.now();

  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15.r),
        topRight: Radius.circular(15.r),
      ),
    ),
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) => Container(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 12, bottom: 32.h),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppTheme.colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(24.r),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 6.h,
                width: 48.w,
                decoration: BoxDecoration(
                  color: AppTheme.colors.black5,
                  borderRadius: BorderRadius.circular(24.r),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      context.loc.close,
                      style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                    ),
                  ),
                  Text(
                    "Choose date",
                    style: AppTheme.data.textTheme.titleLarge,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (date.isBefore(todayDate)) {
                        selectedDate(date);
                      }
                      Navigator.pop(context);
                    },
                    child: Text(
                      context.loc.choose,
                      style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 220.h,
                child: CupertinoDatePicker(
                  key: UniqueKey(),
                  use24hFormat: true,
                  minimumDate: DateTime.now(),
                  maximumDate: DateTime(DateTime.now().year, DateTime.now().month + 3),
                  mode: CupertinoDatePickerMode.dateAndTime,
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (DateTime newDateTime) {
                    date = newDateTime;
                    if (newDateTime.isAfter(DateTime.now())) {}
                    selectedDate(date);
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
