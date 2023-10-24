import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/modules/main_module/drawer_module/setting_module/component/change_language_dialog.dart';

class SettingModule extends StatefulWidget {
  const SettingModule({super.key});

  @override
  State<SettingModule> createState() => _SettingModuleState();
}

class _SettingModuleState extends State<SettingModule> {
  String lang = "Русский";
  bool turnOnNotification = true;

  getAppLang() async {
    SharedPrefService pref = await SharedPrefService.initialize();
    if (pref.getLanguage == "ru") {
      setState(() {
        lang = "Ру";
      });
    } else if (pref.getLanguage == "uz") {
      setState(() {
        lang = "O'z";
      });
    } else if (pref.getLanguage == "en") {
      setState(() {
        lang = "Ўз";
      });
    }
  }

  @override
  void initState() {
    getAppLang();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault, vertical: 32),
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
                    "Настройки",
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.data.textTheme.titleLarge,
                  ),
                  const SizedBox(width: 32)
                ],
              ),
              const SizedBox(height: 32),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              InkWell(
                onTap: () {
                  setState(() {
                    turnOnNotification = !turnOnNotification;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.notification,
                            width: 24,
                            height: 24,
                            color: AppTheme.colors.black80,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            "Уведомления",
                            style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
                          ),
                          const Spacer(),
                          Transform.scale(
                            scale: 0.8,
                            child: CupertinoSwitch(
                              value: turnOnNotification,
                              activeColor: AppTheme.colors.primary,
                              onChanged: (bool value) {
                                setState(() {
                                  turnOnNotification = value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(color: AppTheme.colors.black20, height: 0.1),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  changeLangModalBottomSheetComponent(
                    context: context,
                    currentLang: context.loc.localeName,
                  ).then((value) => getAppLang());
                },
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.only(top: 14, bottom: 14, right: 14),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.language,
                            width: 24,
                            height: 24,
                            color: AppTheme.colors.black80,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            "Язык",
                            style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
                          ),
                          const Spacer(),
                          Text(
                            lang,
                            style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: AppTheme.colors.black20, height: 0.1),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.delete,
                            width: 24,
                            height: 24,
                            color: AppTheme.colors.red,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            "Удалить аккаунт",
                            style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.red),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: AppTheme.colors.black20, height: 0.1),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
