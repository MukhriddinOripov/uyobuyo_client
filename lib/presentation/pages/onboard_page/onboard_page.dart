import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
  String currentLan = "O'z";
  int currentLanIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Image.asset(
            AppImages.onboard,
            width: double.infinity,
            height: double.infinity,
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
                    style: AppTheme.data.textTheme.titleSmall
                        ?.copyWith(color: AppTheme.colors.black80, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                      currentLanIndex == 0
                          ? AppImages.flagUz
                          : currentLanIndex == 1
                              ? AppImages.flagRu
                              : AppImages.flagEng,
                      width: 28,
                      height: 20),
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
                    "Поездки между городами еще никогда не были проще!",
                    textAlign: TextAlign.center,
                    style: AppTheme.data.textTheme.displaySmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 24),
                    child: Text(
                      "Закажи поездку между городами по одному из 20+ маршрутов всего за 3 минуты",
                      textAlign: TextAlign.center,
                      style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.black60),
                    ),
                  ),
                  MainButtonComponent(
                    name: "Поехали!",
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
          language: "O'zbek",
          icon: AppImages.flagUz,
          onTap: () {
            saveLanguage("O'z", 0);
          },
        ),
        popupMenuItem(
          language: 'Русский',
          icon: AppImages.flagRu,
          onTap: () {
            saveLanguage("Ру", 1);
          },
        ),
        popupMenuItem(
          language: 'English',
          icon: AppImages.flagEng,
          onTap: () {
            saveLanguage("Eng", 2);
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
              style: AppTheme.data.textTheme.titleSmall
                  ?.copyWith(color: AppTheme.colors.black80, fontWeight: FontWeight.w500),
            ),
            Image.asset(icon, width: 28, height: 20),
          ],
        ),
      ),
    );
  }

  void saveLanguage(String language, int indexLang) {
    currentLan = language;
    currentLanIndex = indexLang;
    setState(() {});
  }
}
