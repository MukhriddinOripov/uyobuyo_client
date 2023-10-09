import 'package:flutter/material.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

Future<void> showImageTypeComponent({required BuildContext context, required ValueChanged<bool> valueChanged}) {
  return showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Container(
          height: 290,
          decoration: BoxDecoration(
            color: AppTheme.colors.background,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 30),
                child: Text(
                  context.loc.choose_type,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    disabledBackgroundColor: AppTheme.colors.primary80,
                    foregroundColor: AppTheme.colors.white,
                    backgroundColor: AppTheme.colors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    valueChanged(false);
                  },
                  child: Text(
                    context.loc.camera,
                    style: AppTheme.data.textTheme.headlineMedium?.copyWith(color: AppTheme.colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    disabledBackgroundColor: AppTheme.colors.primary80,
                    foregroundColor: AppTheme.colors.white,
                    backgroundColor: AppTheme.colors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    valueChanged(true);
                  },
                  child: Text(
                    context.loc.gallery,
                    style: AppTheme.data.textTheme.headlineMedium?.copyWith(color: AppTheme.colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
