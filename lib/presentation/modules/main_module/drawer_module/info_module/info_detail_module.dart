import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/drawer/drawel_model.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

class InfoDetailModule extends StatelessWidget {
  final DrawerData data;

  const InfoDetailModule({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(left: kPaddingDefault, top: 32, right: kPaddingDefault),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Info",
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.data.textTheme.titleLarge,
                  ),
                  const SizedBox(width: 32)
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Text(data.title, style: AppTheme.data.textTheme.headlineMedium),
                      const SizedBox(height: 12),
                      data.contentType.contains("MARKDOWN") ? MarkdownBody(data: data.content) : Text(data.content),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
