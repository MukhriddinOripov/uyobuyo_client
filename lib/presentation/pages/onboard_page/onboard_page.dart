import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:uyobuyo_client/application/language_provider.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  String currentLan = "Ру";
  int currentLanIndex = 0;

  @override
  void initState() {
    getAppLang();
    super.initState();
  }

  getAppLang() async {
    SharedPrefService pref = await SharedPrefService.initialize();
    if (pref.getLanguage == "ru") {
      setState(() {
        currentLan = "Ру";
        currentLanIndex = 0;
      });
    } else if (pref.getLanguage == "uz") {
      setState(() {
        currentLan = "O'z";
        currentLanIndex = 1;
      });
    }
    else if(pref.getLanguage == "en") {
      setState(() {
        currentLan = "Ўз";
        currentLanIndex = 2;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Image.asset(
            AppImages.onboard,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 70,
            right: 16,
            child: ElevatedButton(
              onPressed: () {
                _showPopupMenu();
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                backgroundColor: AppTheme.colors.white.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    currentLan,
                    style: AppTheme.data.textTheme.titleSmall?.copyWith(color: AppTheme.colors.black80, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  Image.asset(currentLanIndex == 0 ? AppImages.flagRu : AppImages.flagUz, width: 28, height: 20),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 32,
                    height: 4,
                    margin: const EdgeInsets.only(top: 12, bottom: 24),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(243, 243, 244, 1),
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  Text(
                    context.loc.onboardSheetTitle,
                    textAlign: TextAlign.center,
                    style: AppTheme.data.textTheme.displaySmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 24),
                    child: Text(
                      context.loc.onboardSheetText,
                      textAlign: TextAlign.center,
                      style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.black60),
                    ),
                  ),
                  MainButtonComponent(
                    name: context.loc.onboardSheetBtnText,
                    onPressed: () {
                      context.pushNamed(Routes.checkPhonePage.name);
                    },
                  ),
                  const SizedBox(height: 32)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showPopupMenu() async {
    final RelativeRect position = RelativeRect.fromLTRB(MediaQuery.sizeOf(context).width, 70, 16, 0);
    await showMenu(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      context: context,
      position: position,
      color: AppTheme.colors.white,
      items: [
        popupMenuItem(
          language: 'Русский',
          icon: AppImages.flagRu,
          onTap: () {
            saveLanguage("Ру", "ru", 0);
          },
        ),
        popupMenuItem(
          language: "O'zbek",
          icon: AppImages.flagUz,
          onTap: () {
            saveLanguage("O'z", "uz", 1);
          },
        ),
        popupMenuItem(
          language: 'Ўзбек',
          icon: AppImages.flagUz,
          onTap: () {
            saveLanguage("Ўз", "en", 2);
          },
        )
      ],
    );
  }

  PopupMenuItem popupMenuItem({required Function() onTap, required String language, required String icon}) {
    return PopupMenuItem(
      onTap: onTap,
      value: 2,
      padding: EdgeInsets.zero,
      child: Container(
        width: 111,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              language,
              style: AppTheme.data.textTheme.titleSmall?.copyWith(color: AppTheme.colors.black80, fontWeight: FontWeight.w500),
            ),
            Image.asset(icon, width: 28, height: 20),
          ],
        ),
      ),
    );
  }

  void saveLanguage(String language, String saveLanguage, int indexLang) {
    Provider.of<LanguageProvider>(
      context,
      listen: false,
    ).setLocale(Locale(saveLanguage));
    currentLan = language;
    currentLanIndex = indexLang;
    setState(() {});
  }
}
