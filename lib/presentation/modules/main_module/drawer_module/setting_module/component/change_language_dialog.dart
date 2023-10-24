import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:uyobuyo_client/application/app_manager/app_manager_cubit.dart';
import 'package:uyobuyo_client/application/language_provider.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

Future<void> changeLangModalBottomSheetComponent({
  required BuildContext context,
  required String currentLang,
}) {
  void refreshRequests() {
    context.read<AppManagerCubit>().initApp().then((value) {});
  }

  return showModalBottomSheet(
    context: context,
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
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 6.h,
              width: 48.w,
              decoration: BoxDecoration(
                color: const Color(0xFFE3E8FC),
                borderRadius: BorderRadius.circular(24.r),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              context.loc.select_language,
              style: AppTheme.data.textTheme.displaySmall,
            ),
            const SizedBox(height: 40),
            Bounce(
              duration: const Duration(milliseconds: kBounceAnimDuration),
              onPressed: () {
                Provider.of<LanguageProvider>(
                  context,
                  listen: false,
                ).setLocale(const Locale('ru'));
                refreshRequests();
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 16),
                decoration: BoxDecoration(
                  color: AppTheme.colors.black5,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      height: 32,
                      width: 32,
                      AppImages.flagRu,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      "Русский",
                      style: AppTheme.data.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    currentLang == "ru"
                        ? SvgPicture.asset(
                            AppIcons.agree,
                            height: 15,
                            width: 15,
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Bounce(
              duration: const Duration(milliseconds: kBounceAnimDuration),
              onPressed: () {
                Provider.of<LanguageProvider>(
                  context,
                  listen: false,
                ).setLocale(const Locale('uz'));
                refreshRequests();

                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 16),
                decoration: BoxDecoration(
                  color: AppTheme.colors.black5,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      height: 32,
                      width: 32,
                      AppImages.flagUz,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      "O'zbek",
                      style: AppTheme.data.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    currentLang == "uz"
                        ? SvgPicture.asset(
                            AppIcons.agree,
                            height: 15,
                            width: 15,
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Bounce(
              duration: const Duration(milliseconds: kBounceAnimDuration),
              onPressed: () {
                Provider.of<LanguageProvider>(
                  context,
                  listen: false,
                ).setLocale(const Locale('en'));
                refreshRequests();

                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 16),
                decoration: BoxDecoration(
                  color: AppTheme.colors.black5,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      height: 32,
                      width: 32,
                      AppImages.flagUz,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      "Ўзбек",
                      style: AppTheme.data.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    currentLang == "en"
                        ? SvgPicture.asset(
                            AppIcons.agree,
                            height: 15,
                            width: 15,
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
