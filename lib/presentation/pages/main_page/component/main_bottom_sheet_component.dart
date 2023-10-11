import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

class MainBottomSheetComponent extends StatefulWidget {
  final bool ifVisibleBottom;
  final VoidCallback onTapOrder;
  final VoidCallback onTapDelivery;

  const MainBottomSheetComponent({super.key, required this.ifVisibleBottom, required this.onTapOrder, required this.onTapDelivery});

  @override
  State<MainBottomSheetComponent> createState() => _MainBottomSheetComponentState();
}

class _MainBottomSheetComponentState extends State<MainBottomSheetComponent> {
  @override
  Widget build(BuildContext context) {
    return widget.ifVisibleBottom
        ? Container(
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
                Container(
                  width: 48,
                  height: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFE3E8FC),
                  ),
                ),
                const SizedBox(height: 16),
                bottomSheetItem(
                  onTap: widget.onTapOrder,
                  color: AppTheme.colors.primary40,
                  containerColor: AppTheme.colors.primary80,
                  title: context.loc.where_we_go,
                  subtitle: context.loc.trips_to_regions,
                  icon: AppImages.orderImage,
                  alignmentIcon: Alignment.centerRight,
                ),
                const SizedBox(height: 16),
                bottomSheetItem(
                    onTap: widget.onTapDelivery,
                    color: AppTheme.colors.green20,
                    containerColor: AppTheme.colors.green60,
                    title: context.loc.delivery,
                    subtitle: context.loc.weight_delivery,
                    icon: AppImages.deliveryImage,
                    alignmentIcon: Alignment.center),
                const SizedBox(height: 24),
              ],
            ),
          )
        : const SizedBox();
  }

  Widget bottomSheetItem(
      {required VoidCallback onTap,
      required Color color,
      required containerColor,
      required String title,
      required String subtitle,
      required String icon,
      required AlignmentGeometry alignmentIcon}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 74,
        width: MediaQuery.sizeOf(context).width - 32,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: kPaddingDefault),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTheme.data.textTheme.bodyMedium),
                  Text(
                    subtitle,
                    style: AppTheme.data.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.black60),
                  ),
                ],
              ),
            ),
            Container(
              height: 74,
              width: 80,
              alignment: alignmentIcon,
              padding: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: SvgPicture.asset(icon),
            )
          ],
        ),
      ),
    );
  }
}
