import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';

class OrderHistoryDetailModule extends StatefulWidget {
  const OrderHistoryDetailModule({super.key});

  @override
  State<OrderHistoryDetailModule> createState() => _OrderHistoryDetailModuleState();
}

class _OrderHistoryDetailModuleState extends State<OrderHistoryDetailModule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: kPaddingDefault, left: kPaddingDefault, top: 32),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      context.loc.back,
                      style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "11:00, 22 Августа 2023",
                        overflow: TextOverflow.ellipsis,
                        style: AppTheme.data.textTheme.titleLarge,
                      ),
                      Text(
                        "Поездка",
                        overflow: TextOverflow.ellipsis,
                        style: AppTheme.data.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.black80),
                      ),
                    ],
                  ),
                  const SizedBox(width: 32)
                ],
              ),
              const SizedBox(height: 24),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppTheme.colors.black40),
                  image: const DecorationImage(image: AssetImage(AppImages.onboard), fit: BoxFit.fill),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Мухаббат Тилляева",
                style: AppTheme.data.textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                "Серый Chevrolet Cobalt - 01 A 820 BD",
                style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black40),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "4.91",
                        style: AppTheme.data.textTheme.titleLarge,
                      ),
                      Text(
                        "Рейтинг",
                        style: AppTheme.data.textTheme.labelMedium?.copyWith(color: AppTheme.colors.black40, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 40,
                    color: AppTheme.colors.black40,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "12",
                        style: AppTheme.data.textTheme.titleLarge,
                      ),
                      Text(
                        "Опыт вождения",
                        style: AppTheme.data.textTheme.labelMedium?.copyWith(color: AppTheme.colors.black40, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 40,
                    color: AppTheme.colors.black40,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "1277",
                        style: AppTheme.data.textTheme.titleLarge,
                      ),
                      Text(
                        "Поездок",
                        style: AppTheme.data.textTheme.labelMedium?.copyWith(color: AppTheme.colors.black40, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              rowDetailItem(name: 'Откуда', text: "ул. Беруний, Дом 179"),
              rowDetailItem(name: 'Куда', text: "Н. Номонгоний, Дом 22"),
              rowDetailItem(name: 'Дата отъезда', text: "Сегодня (22 Августа)"),
              rowDetailItem(name: 'Время отъезда', text: "10:28"),
              rowDetailItem(name: 'Время в пути', text: "4ч 38 мин"),
              rowDetailItem(name: 'Время прибытия', text: "15:06"),
              rowDetailItem(name: 'Количество пассажиров', text: "3"),
              rowDetailItem(name: 'Стоимость поездки', text: "390 000 UZS", style: AppTheme.data.textTheme.titleLarge),
              const SizedBox(height: 16),
              MainButtonComponent(
                name: "Позвонить водителю",
                onPressed: () async {
                  final call = Uri.parse('tel:+998710000000');
                  if (await canLaunchUrl(call)) {
                    launchUrl(call);
                  } else {
                    throw 'Could not launch $call';
                  }
                },
              ),
              const SizedBox(height: 16),
              MainButtonComponent(
                  name: "Помощь с заказом", backgroundColor: AppTheme.colors.dark, textColor: AppTheme.colors.white, onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  rowDetailItem({required String name, required String text, TextStyle? style}) {
    return Column(
      children: [
        Divider(color: AppTheme.colors.black20, height: 0.1),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
              ),
              Text(
                text,
                style: style ?? AppTheme.data.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
