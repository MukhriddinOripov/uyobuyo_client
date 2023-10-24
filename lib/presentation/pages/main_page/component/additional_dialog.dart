import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/components/text_field_component.dart';

Future<void> additionalDialog({
  required BuildContext context,
  required Function(Map<String, bool> val) selectAdditional,
  required Map<String, bool> initVal,
}) {
  Map<String, bool> values = {
    'nonSmokingDriver': false,
    'onlyWoman': false,
    'lotOfLuggage': false,
  };
  values = initVal;
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
                    "Дополнительно",
                    style: AppTheme.data.textTheme.titleLarge,
                  ),
                  const SizedBox(width: 32),
                ],
              ),
              const SizedBox(height: 28),
              const TextFieldComponent(
                maxLines: 5,
                hint: "Напишите комментарий к заказу",
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 24),
              Divider(color: AppTheme.colors.black20),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    setState(() {
                      values['nonSmokingDriver'] = !values['nonSmokingDriver']!;
                      selectAdditional(values);
                    });
                  });
                },
                title: Text(
                  "Некурящий водитель",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "Бесплатно",
                  style: AppTheme.data.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.black40),
                ),
                trailing: Checkbox(
                  checkColor: AppTheme.colors.text900,
                  activeColor: Colors.transparent,
                  value: values['nonSmokingDriver'],
                  onChanged: (value) {
                    setState(() {
                      values['nonSmokingDriver'] = value!;
                      selectAdditional(values);
                    });
                  },
                ),
              ),
              Divider(color: AppTheme.colors.black20),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    values['onlyWoman'] = !values['onlyWoman']!;
                    selectAdditional(values);
                  });
                },
                title: Text(
                  "Только женщины",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "Бесплатно",
                  style: AppTheme.data.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.black40),
                ),
                trailing: Checkbox(
                  checkColor: AppTheme.colors.text900,
                  activeColor: Colors.transparent,
                  value: values['onlyWoman'],
                  onChanged: (value) {
                    setState(() {
                      values['onlyWoman'] = value!;
                      selectAdditional(values);
                    });
                  },
                ),
              ),
              Divider(color: AppTheme.colors.black20),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  setState(() {
                    values['lotOfLuggage'] = !values['lotOfLuggage']!;
                    selectAdditional(values);
                  });
                },
                title: Text(
                  "Много багажа",
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "+20 000 USZ",
                  style: AppTheme.data.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.black40),
                ),
                trailing: Checkbox(
                  checkColor: AppTheme.colors.text900,
                  activeColor: Colors.transparent,
                  value: values['lotOfLuggage'],
                  onChanged: (value) {
                    setState(() {
                      values['lotOfLuggage'] = value!;
                      selectAdditional(values);
                    });
                  },
                ),
              ),
              Divider(color: AppTheme.colors.black20),
              SizedBox(height: 32.h),
              MainButtonComponent(
                name: context.loc.back,
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      );
    },
  );
}
