import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/components/text_field_component.dart';
import 'package:uyobuyo_client/presentation/pages/base_page.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class OrderAcceptedPage extends BaseScreen {
  const OrderAcceptedPage({super.key});

  @override
  State<BaseScreen> createState() => _OrderAcceptedPageState();
}

class _OrderAcceptedPageState extends BaseState<OrderAcceptedPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: AppTheme.colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Text(
            "Водитель будет в течении ~ 5 минут",
            style: AppTheme.data.textTheme.headlineMedium,
          ),
          const SizedBox(height: 28),
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
          const SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      _showActionSheet(context);
                    },
                    child: Container(
                      height: 56,
                      width: 56,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.colors.black5),
                      child: SvgPicture.asset(AppIcons.cancel),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Отменить",
                    style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
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
                    "Позвонить",
                    style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      orderDetailComponent(context: context);
                    },
                    child: Container(
                      height: 56,
                      width: 56,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.colors.black5),
                      child: SvgPicture.asset(AppIcons.orderDetail),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Детали",
                    style: AppTheme.data.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: Text(
          'Вы уверены что вы хотите отменить заказ?',
          style: AppTheme.data.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500),
        ),
        message: Text(
          "Заказ №150604",
          style: AppTheme.data.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w400),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
              context.pushNamed(Routes.orderCancelPage.name);
            },
            child: Text(
              'Отменить заказ',
              style: AppTheme.data.textTheme.bodyLarge?.copyWith(color: AppTheme.colors.red60),
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Cancel',
            style: AppTheme.data.textTheme.bodyLarge?.copyWith(color: AppTheme.colors.blue),
          ),
        ),
      ),
    );
  }

  Future<void> orderDetailComponent({
    required BuildContext context,
    Function()? onTap,
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
        final commentController = TextEditingController();

        return Padding(
          padding: EdgeInsets.only(
            top: 12.h,
            left: 16.w,
            right: 16.w,
            bottom: 49.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 16.h),
              Text(
                "Детали заказа",
                style: AppTheme.data.textTheme.headlineMedium,
              ),
              SizedBox(height: 32.h),
              TextFieldComponent(
                controller: commentController,
                hint: "Оставьте отзыв",
                maxLines: 3,
              ),
              SizedBox(height: 16.h),
              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 5,
                itemSize: 50,
                unratedColor: AppTheme.colors.black5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
              SizedBox(height: 24.h),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Стоимость поездки',
                          style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "390 000 UZS",
                          style: AppTheme.data.textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  Divider(color: AppTheme.colors.black20, height: 0.1),
                ],
              ),
              InkWell(
                onTap: () {
                  context.pushNamed(Routes.orderDetailAfterCreatePage.name);
                },
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.orderDetail,
                            width: 24,
                            height: 24,
                            color: AppTheme.colors.black80,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Детали заказа',
                            style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
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
                onPressed: onTap ?? () => Navigator.pop(context),
              ),
            ],
          ),
        );
      },
    );
  }
}
