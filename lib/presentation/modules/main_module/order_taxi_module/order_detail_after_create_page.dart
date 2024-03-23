import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

class OrderDetailAfterCreatePage extends StatelessWidget {
  const OrderDetailAfterCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 12.h,
            left: 16.w,
            right: 16.w,
            bottom: 49.h,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        context.pop();
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
              SizedBox(height: 48.h),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(kPaddingDefault),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Откуда',
                      style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "ул. Беруний, Дом 179",
                      style: AppTheme.data.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(kPaddingDefault),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Куда',
                      style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Н. Номонгоний, Дом 22",
                      style: AppTheme.data.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(kPaddingDefault),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Тип поездки',
                      style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Запланированная поездка",
                      style: AppTheme.data.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(kPaddingDefault),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Дата отъезда',
                      style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Сегодня (22 Августа)",
                      style: AppTheme.data.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(kPaddingDefault),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Время отъезда',
                      style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "10:28",
                      style: AppTheme.data.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(kPaddingDefault),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Количество пассажиров',
                      style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Вся машина",
                      style: AppTheme.data.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(kPaddingDefault),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Стоимость поездки',
                      style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "390 000 UZS",
                      style: AppTheme.data.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              const Spacer(),
              Column(
                children: [
                  GestureDetector(
                    onTap: () async {
                      final call = Uri.parse('tel:+998710000000');
                      if (await canLaunchUrl(call)) {
                        launchUrl(call);
                      } else {
                        throw 'Could not launch $call';
                      }
                    },
                    child: Container(
                      height: 56,
                      width: 56,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.colors.black5),
                      child: SvgPicture.asset(AppIcons.call),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Связаться с водителем",
                    style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
