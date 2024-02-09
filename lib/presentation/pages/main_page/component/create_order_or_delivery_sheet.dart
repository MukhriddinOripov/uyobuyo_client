import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/application/main_page_manage/main_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';

Future<void> createOrderOrDeliverySheetComponent({
  required BuildContext context,
  required String title,
  required String subtitle,
  required Function() onTapBtn,
  required Function() onTapFrom,
  required Function() onTapTo,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    barrierColor: Colors.transparent,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 6.h,
                width: 48.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFE3E8FC),
                  borderRadius: BorderRadius.circular(24.r),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  context.loc.back,
                  style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                )),
            SizedBox(height: 24.h),
            Divider(color: AppTheme.colors.black20, height: 0.1),
            InkWell(
              onTap: onTapFrom,
              child: Column(
                children: [
                  Container(
                    // height: 60,
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.colors.dark),
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.colors.white),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width - 84,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  MainBloc.whereFromAddress ?? title,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTheme.data.textTheme.bodyMedium,
                                ),
                                Text(
                                  MainBloc.whereFromSubAddress ?? subtitle,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.black80),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: AppTheme.colors.black20, height: 0.1),
                ],
              ),
            ),
            InkWell(
              onTap: onTapTo,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 60,
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.colors.primary),
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.colors.white),
                          ),
                        ),
                        const SizedBox(width: 12),
                        MainBloc.whereToAddress == null
                            ? Text(
                                "Куда?",
                                style: AppTheme.data.textTheme.bodyMedium,
                              )
                            : Expanded(
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width - 84,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        MainBloc.whereToAddress ?? '',
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTheme.data.textTheme.bodyMedium,
                                      ),
                                      Text(
                                        MainBloc.whereToSubAddress ?? '',
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.black80),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  Divider(color: AppTheme.colors.black20, height: 0.1),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            MainButtonComponent(
              name: context.loc.proceed,
              onPressed: onTapBtn,
            ),
          ],
        ),
      );
    },
  );
}
