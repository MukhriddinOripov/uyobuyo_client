import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:uyobuyo_client/application/main_page_manage/main_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/pages/main_page/component/additional_dialog.dart';
import 'package:uyobuyo_client/presentation/pages/main_page/component/select_count_person.dart';
import 'package:uyobuyo_client/presentation/pages/main_page/component/select_order_type.dart';

Future<void> orderDetailModalBottomSheetComponent({
  required BuildContext context,
  String? btnTitle,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32.r),
        topRight: Radius.circular(32.r),
      ),
    ),
    builder: (context) {
      final DateFormat formatter = DateFormat('dd MMMM', context.loc.localeName);
      String orderType = 'Срочная поездка';
      String countPerson = 'Вся машина';
      Map<String, bool> additionalValues = {
        'nonSmokingDriver': false,
        'onlyWoman': false,
        'lotOfLuggage': false,
      };
      int countAdditionalValues = 0;

      return StatefulBuilder(
          builder: (context, setState) => SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.95,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 12.h,
                    left: 16.w,
                    right: 16.w,
                    bottom: 49.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                context.loc.back,
                                style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                              )),
                          Text(
                            "Детали заказа",
                            style: AppTheme.data.textTheme.titleLarge,
                          ),
                          const SizedBox(width: 32)
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 12.h),
                              Divider(color: AppTheme.colors.black20, height: 0.1),
                              Container(
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
                                              MainBloc.whereFromAddress ?? '',
                                              overflow: TextOverflow.ellipsis,
                                              style: AppTheme.data.textTheme.bodyMedium,
                                            ),
                                            Text(
                                              MainBloc.whereFromSubAddress ?? '',
                                              overflow: TextOverflow.ellipsis,
                                              style: AppTheme.data.textTheme.bodySmall
                                                  ?.copyWith(color: AppTheme.colors.black80),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: AppTheme.colors.black20, height: 0.1),
                              Container(
                                color: Colors.transparent,
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
                                    Expanded(
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
                                              style: AppTheme.data.textTheme.bodySmall
                                                  ?.copyWith(color: AppTheme.colors.black80),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: AppTheme.colors.black20, height: 0.1),
                              SizedBox(height: 24.h),
                              Text(
                                "Тип поездки",
                                style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.text500),
                              ),
                              const SizedBox(height: 8),
                              GestureDetector(
                                onTap: () {
                                  selectOrderTypeComponent(
                                    context: context,
                                    initVal: orderType,
                                    selectOrderType: (val) {
                                      setState(() {
                                        orderType = val;
                                      });
                                    },
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                                  decoration: BoxDecoration(
                                    color: AppTheme.colors.black5,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        orderType,
                                        style: AppTheme.data.textTheme.bodySmall,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: AppTheme.colors.black40,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              if (orderType.contains("Запланированная поездка"))
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "День отъезда",
                                      style:
                                          AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.text500),
                                    ),
                                    const SizedBox(height: 8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                                      decoration: BoxDecoration(
                                        color: AppTheme.colors.black5,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Сегодня(${formatter.format(DateTime.now())})",
                                            style: AppTheme.data.textTheme.bodySmall,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: AppTheme.colors.black40,
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Text(
                                      "Время отъезда",
                                      style:
                                          AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.text500),
                                    ),
                                    const SizedBox(height: 8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                                      decoration: BoxDecoration(
                                        color: AppTheme.colors.black5,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "10:00 - 11:00",
                                            style: AppTheme.data.textTheme.bodySmall,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: AppTheme.colors.black40,
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                  ],
                                ),
                              Text(
                                "Количество пассажиров",
                                style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.text500),
                              ),
                              const SizedBox(height: 8),
                              GestureDetector(
                                onTap: () {
                                  selectCountPerson(
                                    context: context,
                                    initVal: countPerson,
                                    selectCountPerson: (val) {
                                      setState(() {
                                        countPerson = val;
                                      });
                                    },
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                                  decoration: BoxDecoration(
                                    color: AppTheme.colors.black5,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        countPerson,
                                        style: AppTheme.data.textTheme.bodySmall,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: AppTheme.colors.black40,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              InkWell(
                                onTap: () {
                                  additionalDialog(
                                    context: context,
                                    initVal: additionalValues,
                                    selectAdditional: (val) {
                                      setState(() {
                                        additionalValues = val;
                                        if (additionalValues['nonSmokingDriver'] == true &&
                                            additionalValues['onlyWoman'] == true &&
                                            additionalValues['lotOfLuggage'] == true) {
                                          countAdditionalValues = 3;
                                        } else if ((additionalValues['nonSmokingDriver'] == true &&
                                                additionalValues['onlyWoman'] == true &&
                                                additionalValues['lotOfLuggage'] == false) ||
                                            (additionalValues['nonSmokingDriver'] == true &&
                                                additionalValues['onlyWoman'] == false &&
                                                additionalValues['lotOfLuggage'] == true) ||
                                            (additionalValues['nonSmokingDriver'] == false &&
                                                additionalValues['onlyWoman'] == true &&
                                                additionalValues['lotOfLuggage'] == true)) {
                                          countAdditionalValues = 2;
                                        } else if (additionalValues['nonSmokingDriver'] == true ||
                                            additionalValues['onlyWoman'] == true ||
                                            additionalValues['lotOfLuggage'] == true) {
                                          countAdditionalValues = 1;
                                        } else {
                                          countAdditionalValues = 0;
                                        }
                                      });
                                    },
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
                                      child: Row(
                                        children: [
                                          Stack(
                                            children: [
                                              SvgPicture.asset(
                                                AppIcons.faq,
                                                width: 24,
                                                height: 24,
                                                color: AppTheme.colors.black80,
                                              ),
                                              Positioned(
                                                right: 0,
                                                top: 0,
                                                child: countAdditionalValues != 0
                                                    ? Container(
                                                        height: 8,
                                                        width: 8,
                                                        decoration: BoxDecoration(
                                                            color: AppTheme.colors.primary, shape: BoxShape.circle),
                                                      )
                                                    : const SizedBox(),
                                              )
                                            ],
                                          ),
                                          const SizedBox(width: 12),
                                          Text(
                                            countAdditionalValues != 0
                                                ? "$countAdditionalValues Услуги"
                                                : "Дополнительно",
                                            style: AppTheme.data.textTheme.bodySmall
                                                ?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
                                          ),
                                          const Spacer(),
                                          Text(
                                            countAdditionalValues != 0 ? "+25 000 UZS" : "",
                                            style: AppTheme.data.textTheme.bodySmall
                                                ?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(color: AppTheme.colors.black20, height: 0.1),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12.h),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Стоимость поездки',
                            style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            "390 000 UZS",
                            style: AppTheme.data.textTheme.titleLarge,
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      MainButtonComponent(
                        name: "Заказать",
                        onPressed: () {
                          context.read<MainBloc>().add(const MainEvent.createOrder());
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ));
    },
  );
}
