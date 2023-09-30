import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/input_masks.dart';
import 'package:uyobuyo_client/infrastructure/common/validations/input_validations.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/calendar_component.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/components/select_gender_component.dart';
import 'package:uyobuyo_client/presentation/components/text_field_component.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  final List<FocusNode> _focusNodes = [FocusNode(), FocusNode(), FocusNode(), FocusNode()];
  final imageController = TextEditingController();
  final fullNameController = TextEditingController();
  final dateController = TextEditingController();
  final genderController = TextEditingController();
  bool isValid = false;

  @override
  void initState() {
    for (var node in _focusNodes) {
      node.addListener(() {
        setState(() {});
      });
    }
    calledSelectGender();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    for (var node in _focusNodes) {
      node.dispose();
    }
  }

  calledSelectGender() {
    _focusNodes[3].addListener(() {
      if (_focusNodes[3].hasFocus) {
        selectGenderComponent(
          context: context,
          selectedGender: (val) {
            genderController.text = val;
            setState(() {});
          },
        ).then(
          (value) => FocusManager.instance.primaryFocus?.unfocus(),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kPaddingDefault.w),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
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
                    "Создайте новый аккаунт",
                    style: AppTheme.data.textTheme.displaySmall?.copyWith(fontSize: 24),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Давайте знакомиться! Для создания аккаунта заполните информацию о себе",
                    style: AppTheme.data.textTheme.bodySmall?.copyWith(
                      color: AppTheme.colors.black60,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFieldComponent(
                    title: "Фото",
                    focusNode: _focusNodes[0],
                    controller: imageController,
                    readOnly: true,
                    hint: "Прикрепите фото",
                    onFieldSubmitted: (val) {},
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    suffixWidget: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        AppIcons.attach,
                        color: _focusNodes[0].hasFocus ? AppTheme.colors.primary : AppTheme.colors.black60,
                      ),
                    ),
                    validator: (v) {
                      if (isValid) {
                        InputValidations.defaultV(v ?? '').fold(
                          (l) => l.maybeMap(
                            empty: (_) => "Empty",
                            orElse: () => null,
                          ),
                          (r) => null,
                        );
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFieldComponent(
                    title: "Имя и фамилия",
                    focusNode: _focusNodes[1],
                    controller: fullNameController,
                    hint: "Введите свое имя и фамилию",
                    onFieldSubmitted: (val) {},
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    validator: (v) {
                      if (isValid) {
                        InputValidations.defaultV(v ?? '').fold(
                          (l) => l.maybeMap(
                            empty: (_) => "Empty",
                            orElse: () => null,
                          ),
                          (r) => null,
                        );
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFieldComponent(
                    title: "Дата рождения",
                    focusNode: _focusNodes[2],
                    controller: dateController,
                    inputFormatters: [mDate],
                    hint: "ХХ.XX.XXXX",
                    onFieldSubmitted: (val) {},
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.number,
                    suffixWidget: GestureDetector(
                      onTap: () {
                        calendarComponent(
                            context: context,
                            selectedDate: (date) {
                              dateController.text = date;
                            });
                      },
                      child: SvgPicture.asset(
                        AppIcons.calendar,
                        color: _focusNodes[2].hasFocus ? AppTheme.colors.primary : AppTheme.colors.black60,
                      ),
                    ),
                    validator: (v) {
                      if (isValid) {
                        InputValidations.defaultV(v ?? '').fold(
                          (l) => l.maybeMap(
                            empty: (_) => "Empty",
                            orElse: () => null,
                          ),
                          (r) => null,
                        );
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFieldComponent(
                    title: "Пол",
                    focusNode: _focusNodes[3],
                    controller: genderController,
                    readOnly: true,
                    hint: "Укажите свой пол",
                    onFieldSubmitted: (val) {},
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    suffixWidget: GestureDetector(
                      onTap: () {
                        selectGenderComponent(
                          context: context,
                          selectedGender: (val) {
                            genderController.text = val;
                          },
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: _focusNodes[3].hasFocus ? AppTheme.colors.primary : AppTheme.colors.black60,
                      ),
                    ),
                    validator: (v) {
                      if (isValid) {
                        InputValidations.defaultV(v ?? '').fold(
                          (l) => l.maybeMap(
                            empty: (_) => "Empty",
                            orElse: () => null,
                          ),
                          (r) => null,
                        );
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height < 848 ? (MediaQuery.sizeOf(context).height - 640) : 32,
                  ),
                  MainButtonComponent(
                    name: "Создать",
                    onPressed: () {
                      context.pushNamed(Routes.mainPage.name);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
