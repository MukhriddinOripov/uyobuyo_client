import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/application/auth/auth_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({super.key});

  @override
  State<DrawerComponent> createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(top: 87.h, bottom: 40.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: kPaddingDefault.w, left: kPaddingDefault.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 48.w,
                    width: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(AppImages.onboard), fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Аброр Ахмедов", style: AppTheme.data.textTheme.headlineMedium),
                      SizedBox(height: 4.h),
                      Text(
                        "+998 (99) 999-99-99",
                        style: AppTheme.data.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.black60),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        "ID:100104",
                        style: AppTheme.data.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.primary),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            Divider(color: AppTheme.colors.black20, height: 0.1),
            drawerComponent(onTap: () {}, icon: AppIcons.clock, label: context.loc.history_order),
            drawerComponent(onTap: () {}, icon: AppIcons.setting, label: context.loc.setting),
            drawerComponent(onTap: () {}, icon: AppIcons.faq, label: context.loc.faq),
            drawerComponent(onTap: () {}, icon: AppIcons.support, label: context.loc.support_service),
            drawerComponent(onTap: () {}, icon: AppIcons.info, label: context.loc.info),
            const Spacer(),
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                  logOutedState: () => context.go(Routes.onboardPage.path),
                  orElse: () {},
                );
              },
              child: drawerComponent(
                  onTap: () {
                    context.read<AuthBloc>().add(const AuthEvent.logOut());
                  },
                  icon: AppIcons.logOut,
                  label: context.loc.log_out,
                  textColor: AppTheme.colors.red,
                  iconColor: AppTheme.colors.red),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerComponent({required Function() onTap, required String icon, required String label, Color? textColor, Color? iconColor}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
            child: Row(
              children: [
                SvgPicture.asset(
                  icon,
                  width: 24,
                  height: 24,
                  color: iconColor ?? AppTheme.colors.black80,
                ),
                const SizedBox(width: 12),
                Text(
                  label,
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: textColor ?? AppTheme.colors.black80),
                ),
              ],
            ),
          ),
          Divider(color: AppTheme.colors.black20, height: 0.1),
        ],
      ),
    );
  }

}