import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class FAQModule extends StatefulWidget {
  const FAQModule({super.key});

  @override
  State<FAQModule> createState() => _FAQModuleModuleState();
}

class _FAQModuleModuleState extends State<FAQModule> {
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
                    "FAQ",
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
                  context.pushNamed(Routes.faqDetailModule.name);
                },
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        children: [
                          Text(
                            "Как оформить заказ?",
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
                onTap: () {
                  context.pushNamed(Routes.faqDetailModule.name);
                },
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        children: [
                          Text(
                            "Как стать водителем?",
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
                onTap: () {
                  context.pushNamed(Routes.faqDetailModule.name);
                },
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        children: [
                          Text(
                            "Как оформить заказ на доставку?",
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
