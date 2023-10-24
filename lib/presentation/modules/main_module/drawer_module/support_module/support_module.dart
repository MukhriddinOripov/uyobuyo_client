import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

class SupportModule extends StatefulWidget {
  const SupportModule({super.key});

  @override
  State<SupportModule> createState() => _SupportModuleState();
}

class _SupportModuleState extends State<SupportModule> {
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
                    "Служба поддержки",
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.data.textTheme.titleLarge,
                  ),
                  const SizedBox(width: 32)
                ],
              ),
              const SizedBox(height: 32),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              InkWell(
                onTap: () async {
                  final call = Uri.parse('tel:+998000000000');
                  if (await canLaunchUrl(call)) {
                    launchUrl(call);
                  } else {
                    throw 'Could not launch $call';
                  }
                },
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        children: [
                          Text(
                            "+998(99) 999-99-99",
                            style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_outlined)
                        ],
                      ),
                    ),
                    Divider(color: AppTheme.colors.black20, height: 0.1),
                  ],
                ),
              ),
              InkWell(
                onTap: () async {
                  final url = Uri.parse(
                    'https://google.com',
                  );
                  if (await canLaunchUrl(url)) {
                    launchUrl(url, mode: LaunchMode.externalApplication);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        children: [
                          Text(
                            "support@uyobuyo.uz",
                            style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_outlined)
                        ],
                      ),
                    ),
                    Divider(color: AppTheme.colors.black20, height: 0.1),
                  ],
                ),
              ),
              InkWell(
                onTap: () async {
                  final url = Uri.parse(
                    'https://t.me/kunuzofficial',
                  );
                  if (await canLaunchUrl(url)) {
                    launchUrl(url, mode: LaunchMode.externalApplication);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        children: [
                          Text(
                            "Telegram Chat",
                            style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_outlined)
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
