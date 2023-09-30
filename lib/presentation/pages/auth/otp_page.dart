import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/countdown_timer.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> with SingleTickerProviderStateMixin, CodeAutoFill {
  final otpController = TextEditingController();
  bool valid = false;

  late AnimationController _controller;
  late int totalTimeInSeconds;

  @override
  void codeUpdated() {
    setState(() {
      otpController.text = code ?? "";
    });
  }

  @override
  void initState() {
    super.initState();

    ///listen for the SMS code
    listenForCode();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: kTime))
      ..addStatusListener((status) {});
    _controller.reverse(from: _controller.value == 0.0 ? 1.0 : _controller.value);
    _startCountdown();
  }

  Future<void> _startCountdown() async {
    setState(() {
      totalTimeInSeconds = kTime;
    });
    _controller.reverse(from: _controller.value == 0.0 ? 1.0 : _controller.value);
  }

  get _getTimerText {
    return OtpTimer(
      controller: _controller,
      fontSize: 14,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: MediaQuery.sizeOf(context).height > 700,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kPaddingDefault.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Назад",
                    style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                  )),
              const SizedBox(height: 32),
              Text(
                "Рады видеть вас снова, Аброр Ахмедов!",
                style: AppTheme.data.textTheme.displaySmall?.copyWith(fontSize: 24),
              ),
              const SizedBox(height: 8),
              Text(
                "Мы отправили 4-х значный код на указанный вами номер +998 99 999-99-99. Пожалуйста, введите его чтобы мы могли подтвердить вашу личность",
                style: AppTheme.data.textTheme.bodySmall?.copyWith(
                  color: AppTheme.colors.black60,
                ),
              ),
              const SizedBox(height: 24),
              PinCodeTextField(
                autoFocus: true,
                appContext: context,
                controller: otpController,
                keyboardType: TextInputType.number,
                length: 6,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(kBorderRadiusDefault.r),
                  fieldHeight: 48,
                  fieldWidth: 48,
                  disabledColor: AppTheme.colors.black20,
                  inactiveColor: AppTheme.colors.black20,
                  inactiveFillColor: AppTheme.colors.black20,
                  selectedColor: AppTheme.colors.primary,
                  activeColor: AppTheme.colors.black20,
                ),
                backgroundColor: Colors.transparent,
                cursorColor: AppTheme.colors.text900,
                cursorHeight: 24,
                animationDuration: const Duration(milliseconds: 300),
                textStyle: AppTheme.data.textTheme.displayMedium?.copyWith(fontSize: 32),
                boxShadows: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    color: AppTheme.colors.red,
                    blurRadius: 0,
                  )
                ],
                // validator: (v) => InputValidations.defaultV(v ?? '').fold(
                //   (l) => l.maybeMap(
                //     empty: (_) => context.loc.enter_code_otp,
                //     orElse: () => null,
                //   ),
                //   (r) => null,
                // ),
                onCompleted: (output) {
                  debugPrint("Completed");
                  otpController.text = output;
                },
                onChanged: (value) {
                  debugPrint(value);
                  if (value.length > 5) {
                    setState(() {
                      valid = true;
                    });
                  } else {
                    setState(() {
                      valid = false;
                    });
                  }
                },
              ),
              const Spacer(),
              MainButtonComponent(
                  name: "Продолжить",
                  backgroundColor: valid ? AppTheme.colors.primary : AppTheme.colors.primary.withOpacity(0.4),
                  onPressed: () {
                    if (valid) {
                      context.pushNamed(Routes.registerPage.name);
                    }
                  }),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), border: Border.all(color: AppTheme.colors.black20)),
                    child: _getTimerText,
                  ),
                  const SizedBox(width: 8),
                  RichText(
                    text: TextSpan(
                      text: "Не получили код? ",
                      style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.black60),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Отправить повторно",
                          style: AppTheme.data.textTheme.bodySmall!.copyWith(color: AppTheme.colors.primary),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                _startCountdown();
                              });
                            },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    unregisterListener();
    _controller.dispose();
    super.dispose();
  }
}
