import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

Future<void> selectCountPerson({
  required BuildContext context,
  required Function(String val) selectCountPerson,
  required String initVal,
}) {
  String countPerson = initVal;
  int? selectedOption;
  switch (initVal.contains("Вся машина") ? 4 : int.parse(initVal)) {
    case 1:
      {
        selectedOption = 1;
      }
    case 2:
      {
        selectedOption = 2;
      }
    case 3:
      {
        selectedOption = 3;
      }
    default:
      {
        selectedOption = 4;
      }
  }
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
                    "Количество пассажиров",
                    style: AppTheme.data.textTheme.titleLarge,
                  ),
                  const SizedBox(width: 32),
                ],
              ),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault),
                child: Divider(color: AppTheme.colors.black20),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    selectedOption = 1;
                    countPerson = "1";
                    selectCountPerson(countPerson);
                  });
                },
                title: Text(
                  "1",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Radio(
                  value: 1,
                  activeColor: AppTheme.colors.primary,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                      countPerson = "1";
                      selectCountPerson(countPerson);
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault),
                child: Divider(color: AppTheme.colors.black20),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    selectedOption = 2;
                    countPerson = "2";
                    selectCountPerson(countPerson);
                  });
                },
                title: Text(
                  "2",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Radio(
                  value: 2,
                  activeColor: AppTheme.colors.primary,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                      countPerson = "2";
                      selectCountPerson(countPerson);
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault),
                child: Divider(color: AppTheme.colors.black20),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    selectedOption = 3;
                    countPerson = "3";
                    selectCountPerson(countPerson);
                  });
                },
                title: Text(
                  "3",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Radio(
                  value: 3,
                  activeColor: AppTheme.colors.primary,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                      countPerson = "3";
                      selectCountPerson(countPerson);
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault),
                child: Divider(color: AppTheme.colors.black20),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    selectedOption = 4;
                    countPerson = "Вся машина";
                    selectCountPerson(countPerson);
                  });
                },
                title: Text(
                  "Вся машина",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Radio(
                  value: 4,
                  activeColor: AppTheme.colors.primary,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                      countPerson = "4";
                      selectCountPerson(countPerson);
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault),
                child: Divider(color: AppTheme.colors.black20),
              ),
            ],
          ),
        ),
      );
    },
  );
}
