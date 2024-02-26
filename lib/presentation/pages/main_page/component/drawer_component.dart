import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/application/auth/auth_bloc.dart';
import 'package:uyobuyo_client/application/drawer_manager/drawer_bloc.dart';
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
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.maybeWhen(
                    loadedUserData: (data) => Padding(
                          padding: EdgeInsets.only(right: kPaddingDefault.w, left: kPaddingDefault.w),
                          child: GestureDetector(
                            onTap: () {
                              context.pushNamed(Routes.profileDetailModule.name);
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 48.w,
                                    width: 48.w,
                                    decoration: const BoxDecoration(color: Colors.transparent, shape: BoxShape.circle),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(kBorderRadiusDefault.r),
                                      child: CachedNetworkImage(
                                        imageUrl: data.imageUrl ?? '',
                                        imageBuilder: (context, imageProvider) => Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        placeholder: (context, url) => Container(
                                          height: 48.w,
                                          width: 48.w,
                                          padding: const EdgeInsets.all(10),
                                          child: const CircularProgressIndicator(),
                                        ),
                                        errorWidget: (context, url, error) => Center(
                                          child: Container(
                                            width: 48,
                                            height: 48,
                                            padding: const EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(color: AppTheme.colors.black20),
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(AppImages.noImage),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(data.name ?? '', style: AppTheme.data.textTheme.headlineMedium),
                                      SizedBox(height: 4.h),
                                      Text(
                                        data.phoneNumber,
                                        style: AppTheme.data.textTheme.labelMedium
                                            ?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.black60),
                                      ),
                                      SizedBox(height: 4.h),
                                      Text(
                                        data.login,
                                        style: AppTheme.data.textTheme.labelMedium
                                            ?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.primary),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                    orElse: () {
                      return const SizedBox();
                    });
              },
            ),
            const SizedBox(height: 40),
            Divider(color: AppTheme.colors.black20, height: 0.1),
            drawerComponent(
                onTap: () {
                  context.pushNamed(Routes.orderHistoryModule.name);
                },
                icon: AppIcons.clock,
                label: context.loc.history_order),
            drawerComponent(
                onTap: () {
                  context.pushNamed(Routes.settingModule.name);
                },
                icon: AppIcons.setting,
                label: context.loc.setting),
            drawerComponent(
                onTap: () {
                  context.read<DrawerBloc>().add(const DrawerEvent.getFAQ());
                  context.pushNamed(Routes.faqModule.name);
                },
                icon: AppIcons.faq,
                label: context.loc.faq),
            drawerComponent(
                onTap: () {
                  context.read<DrawerBloc>().add(const DrawerEvent.getSupport());
                  context.pushNamed(Routes.supportModule.name);
                },
                icon: AppIcons.support,
                label: context.loc.support_service),
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
            const SizedBox(height: 56),
          ],
        ),
      ),
    );
  }

  Widget drawerComponent(
      {required Function() onTap, required String icon, required String label, Color? textColor, Color? iconColor}) {
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
                  style: AppTheme.data.textTheme.bodySmall
                      ?.copyWith(fontWeight: FontWeight.w500, color: textColor ?? AppTheme.colors.black80),
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
