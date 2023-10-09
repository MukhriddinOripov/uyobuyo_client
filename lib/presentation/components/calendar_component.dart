import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

Future<void> calendarComponent({
  required BuildContext context,
  required Function(String val) selectedDate,
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
      final DateFormat formatter = DateFormat('dd.MM.yyyy', context.loc.localeName);
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
                    context.loc.bright_day,
                    style: AppTheme.data.textTheme.titleLarge,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (date.isBefore(todayDate)) {
                        selectedDate(formatter.format(date).toString());
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
                  maximumDate: DateTime(DateTime.now().year + 1),
                  minimumYear: DateTime.now().year - 100,
                  maximumYear: DateTime.now().year,
                  mode: CupertinoDatePickerMode.date,
                  dateOrder: DatePickerDateOrder.dmy,
                  initialDateTime: todayDate,
                  onDateTimeChanged: (DateTime newDateTime) {
                    date = newDateTime;
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
