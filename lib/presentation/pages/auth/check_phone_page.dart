import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/input_masks.dart';
import 'package:uyobuyo_client/infrastructure/common/validations/input_validations.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/components/text_field_component.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class CheckPhonePage extends StatefulWidget {
  const CheckPhonePage({super.key});

  @override
  State<CheckPhonePage> createState() => _CheckPhonePageState();
}

class _CheckPhonePageState extends State<CheckPhonePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FocusNode focusNode = FocusNode();
  final phoneController = TextEditingController();
  bool isAgree = false;

  @override
  void initState() {
    super.initState();
    phoneController.addListener(() {
      setState(() {});
    });
    focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(right: kPaddingDefault.w, left: kPaddingDefault.w, top: 56, bottom: 48),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Давайте начнем!",
                style: AppTheme.data.textTheme.displaySmall?.copyWith(fontSize: 24),
              ),
              const SizedBox(height: 12),
              Text(
                "Пожалуйста, введите свой номер телефона!",
                style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.black60),
              ),
              const SizedBox(height: 32),
              TextFieldComponent(
                  controller: phoneController,
                  inputFormatters: [mPhoneNumber],
                  textInputAction: TextInputAction.send,
                  textInputType: TextInputType.phone,
                  prefixWidget: Padding(
                    padding: const EdgeInsets.only(right: 5, bottom: 2.5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(width: 4),
                        Text(
                          "+998",
                          style: AppTheme.data.textTheme.bodyLarge?.copyWith(
                              color:
                                  phoneController.text.isNotEmpty ? AppTheme.colors.text900 : AppTheme.colors.black60),
                        )
                      ],
                    ),
                  ),
                  onChanged: (value) {},
                  validator: (v) {
                    InputValidations.phoneNumberV(v ?? '').fold(
                      (l) => l.maybeMap(
                        empty: (_) => "Введите свой номер телефона",
                        invalidPhone: (_) => "Неправильная номер телефона",
                        orElse: () => null,
                      ),
                      (r) => null,
                    );

                    return null;
                  }),
              const Spacer(),
              MainButtonComponent(
                  name: "Продолжить",
                  backgroundColor: (formKey.currentState?.validate() ?? false) && isAgree
                      ? AppTheme.colors.primary
                      : AppTheme.colors.primary.withOpacity(0.4),
                  onPressed: () {
                    if ((formKey.currentState?.validate() ?? false) && isAgree) {
                      context.pushNamed(Routes.otpPage.name);
                    }

                    setState(() {});
                  }),
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                    checkColor: AppTheme.colors.text900,
                    activeColor: Colors.transparent,
                    value: isAgree,
                    onChanged: (value) {
                      setState(() {
                        isAgree = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: "Я согласен с ",
                        style: AppTheme.data.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w400),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Политикой конфиденциальности и условия пользовательского соглашения ",
                            style: AppTheme.data.textTheme.labelMedium!
                                .copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.primary),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                setState(() {
                                  isAgree = !isAgree;
                                });
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}