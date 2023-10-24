import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class OrderHistoryModule extends StatefulWidget {
  const OrderHistoryModule({super.key});

  @override
  State<OrderHistoryModule> createState() => _OrderHistoryModuleState();
}

class _OrderHistoryModuleState extends State<OrderHistoryModule> {
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
                  Text(
                    "История заказов",
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.data.textTheme.titleLarge,
                  ),
                  const SizedBox(width: 32)
                ],
              ),
              const SizedBox(height: 24),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  itemBuilder: (ctx, index) => GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.orderHistoryDetailModule.name);
                    },
                    child: historyItemContainer(
                      orderDate: 'Поездка - 09 Авг 11:00',
                      orderFrom: 'Ташкент',
                      orderTo: 'Наманган',
                      orderPrice: '947 500 UZS',
                      orderLong: "271 км",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  historyItemContainer(
      {required String orderDate, required String orderFrom, required String orderTo, required String orderPrice, required String orderLong}) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.colors.black5,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            orderDate,
            style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.black60),
          ),
          const SizedBox(height: 12),
          Row(
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
              const SizedBox(width: 8),
              Text(
                orderFrom,
                style: AppTheme.data.textTheme.bodySmall,
              ),
            ],
          ),
          Container(
            height: 24,
            width: 2,
            margin: const EdgeInsets.symmetric(horizontal: 9),
            decoration: BoxDecoration(color: AppTheme.colors.black60),
          ),
          Row(
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
              const SizedBox(width: 8),
              Text(
                orderTo,
                style: AppTheme.data.textTheme.bodySmall,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: AppTheme.colors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  orderPrice,
                  style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.white),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: AppTheme.colors.black40,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  orderLong,
                  style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
