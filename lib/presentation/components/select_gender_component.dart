import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

Future<void> selectGenderComponent({
  required BuildContext context,
  required Function(String val) selectedGender,
}) {
  String gender = '';
  int? selectedOption;
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
                  color: AppTheme.colors.black10,
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
                    context.loc.gender,
                    style: AppTheme.data.textTheme.titleLarge,
                  ),
                  GestureDetector(
                    onTap: () {
                      selectedGender(gender);
                      Navigator.pop(context);
                    },
                    child: Text(
                      context.loc.choose,
                      style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                    ),
                  )
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
                    gender = context.loc.man;
                    selectedGender(gender);
                  });
                },
                title: Text(
                  gender = context.loc.man,
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Radio(
                  value: 1,
                  activeColor: AppTheme.colors.primary,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                      gender = gender = context.loc.man;
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
                    gender = gender = context.loc.woman;
                    selectedGender(gender);
                  });
                },
                title: Text(
                  gender = context.loc.woman,
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Radio(
                  value: 2,
                  activeColor: AppTheme.colors.primary,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                      gender = gender = context.loc.woman;
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
