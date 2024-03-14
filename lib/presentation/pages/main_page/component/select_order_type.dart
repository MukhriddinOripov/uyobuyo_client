import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

Future<void> selectOrderTypeComponent({
  required BuildContext context,
  required Function(String val) selectOrderType,
  required String initVal,
}) {
  String orderType = initVal;
  int? selectedOption = initVal.contains("Запланированная поездка") ? 1 : 2;
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
                    "Тип поездки",
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
                    orderType = "Запланированная поездка";
                    selectOrderType(orderType);
                    Navigator.of(context).pop();
                  });
                },
                title: Text(
                  "Запланированная поездка",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Radio(
                  value: 1,
                  activeColor: AppTheme.colors.primary,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                      orderType = "Запланированная поездка";
                      selectOrderType(orderType);
                      Navigator.of(context).pop();
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
                    orderType = "Срочная поездка";
                    selectOrderType(orderType);
                    Navigator.of(context).pop();
                  });
                },
                title: Text(
                  "Срочная поездка",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                leading: Radio(
                  value: 2,
                  activeColor: AppTheme.colors.primary,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                      orderType = "Срочная поездка";
                      selectOrderType(orderType);
                      Navigator.of(context).pop();
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
