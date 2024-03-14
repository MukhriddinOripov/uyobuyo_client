import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/application/auth/auth_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/date_format.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/gender_format.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class ProfileDetailModule extends StatefulWidget {
  const ProfileDetailModule({super.key});

  @override
  State<ProfileDetailModule> createState() => _ProfileDetailModuleState();
}

class _ProfileDetailModuleState extends State<ProfileDetailModule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault, vertical: 32),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return state.maybeWhen(
                loadedUserData: (data) => Column(
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
                          "Профиль",
                          overflow: TextOverflow.ellipsis,
                          style: AppTheme.data.textTheme.titleLarge,
                        ),
                        const SizedBox(width: 32)
                      ],
                    ),
                    const SizedBox(height: 32),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppTheme.colors.primary, width: 2),
                      ),
                      child: Column(
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
                          const SizedBox(height: 12),
                          Text(data.name ?? '', style: AppTheme.data.textTheme.headlineMedium),
                          const SizedBox(height: 8),
                          Text(
                            data.phoneNumber,
                            style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    rowDetailItem(name: "ID", text: "${data.id}"),
                    rowDetailItem(
                      name: context.loc.bright_day,
                      text: CustomDateFormat.fMonthYear(date: data.birthDate ?? DateTime.now(), context: context),
                    ),
                    rowDetailItem(name: context.loc.gender, text: gender(context: context, gender: data.gender)),
                    const Spacer(),
                    MainButtonComponent(
                      name: "Редактировать профиль",
                      onPressed: () {
                        context.pushNamed(Routes.editProfileModule.name, extra: {"userData": data});
                      },
                    ),
                  ],
                ),
                orElse: () => const SizedBox(),
              );
            },
          ),
        ),
      ),
    );
  }

  Column rowDetailItem({required String name, required String text, TextStyle? style}) {
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
                style: AppTheme.data.textTheme.titleSmall
                    ?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
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
