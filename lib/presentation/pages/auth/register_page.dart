import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uyobuyo_client/application/auth/auth_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/input_masks.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/common/validations/input_validations.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/calendar_component.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/components/select_gender_component.dart';
import 'package:uyobuyo_client/presentation/components/select_image_dialog.dart';
import 'package:uyobuyo_client/presentation/components/text_field_component.dart';
import 'package:uyobuyo_client/presentation/pages/base_page.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class RegisterPage extends BaseScreen {
  const RegisterPage({super.key});

  @override
  State<BaseScreen> createState() => _RegisterPageState();
}

class _RegisterPageState extends BaseState<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  final List<FocusNode> _focusNodes = [FocusNode(), FocusNode(), FocusNode(), FocusNode()];
  final imageController = TextEditingController();
  final fullNameController = TextEditingController();
  final dateController = TextEditingController();
  final genderController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  XFile? selectedFile;
  late FormData formData;

  @override
  void initState() {
    for (var node in _focusNodes) {
      node.addListener(() {
        setState(() {});
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    for (var node in _focusNodes) {
      node.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kPaddingDefault.w),
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
                      context.loc.back,
                      style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.black80),
                    )),
                const SizedBox(height: 32),
                Text(
                  context.loc.create_account,
                  style: AppTheme.data.textTheme.displaySmall?.copyWith(fontSize: 24),
                ),
                const SizedBox(height: 8),
                Text(
                  context.loc.enter_user_info,
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(
                    color: AppTheme.colors.black60,
                  ),
                ),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: () async {
                    await showImageTypeComponent(
                        context: context,
                        valueChanged: (value) async {
                          if (value) {
                            await _onImageButtonPressed(ImageSource.gallery, context: context);
                          } else {
                            await _onImageButtonPressed(ImageSource.camera, context: context);
                          }
                        });
                  },
                  child: TextFieldComponent(
                    key: formKey,
                    title: context.loc.photo,
                    controller: imageController,
                    readOnly: true,
                    hint: context.loc.enter_photo,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    suffixWidget: SvgPicture.asset(
                      AppIcons.attach,
                      color: AppTheme.colors.black60,
                    ),
                    validator: (v) => InputValidations.defaultV(v ?? '').fold(
                      (l) => l.maybeMap(
                        empty: (_) => "Выберите свой фото",
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFieldComponent(
                  key: formKey,
                  title: context.loc.full_name,
                  focusNode: _focusNodes[0],
                  controller: fullNameController,
                  hint: context.loc.enter_full_name,
                  onFieldSubmitted: (val) {},
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.text,
                  validator: (v) => InputValidations.defaultV(v ?? '').fold(
                    (l) => l.maybeMap(
                      empty: (_) => "Введите свой имя и фамилия",
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
                ),
                const SizedBox(height: 16),
                TextFieldComponent(
                  key: formKey,
                  title: context.loc.bright_day,
                  focusNode: _focusNodes[1],
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
                      color: _focusNodes[1].hasFocus ? AppTheme.colors.primary : AppTheme.colors.black60,
                    ),
                  ),
                  validator: (v) => InputValidations.dateV(v ?? '').fold(
                    (l) => l.maybeMap(
                      empty: (_) => "Введите свой день рождения",
                      invalidPhone: (_) => "Неправильная дата",
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    selectGenderComponent(
                      context: context,
                      selectedGender: (val) {
                        genderController.text = val;
                      },
                    );
                  },
                  child: TextFieldComponent(
                    key: formKey,
                    title: context.loc.gender,
                    controller: genderController,
                    readOnly: true,
                    hint: context.loc.enter_sex,
                    onFieldSubmitted: (val) {},
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    suffixWidget: Icon(
                      Icons.arrow_forward_ios,
                      color: AppTheme.colors.black60,
                    ),
                    validator: (v) => InputValidations.defaultV(v ?? '').fold(
                      (l) => l.maybeMap(
                        empty: (_) => "Выберите свой пол",
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                  ),
                ),
                const Spacer(),
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        loading: (loading) {
                          showLoading(needLoading: loading);
                        },
                        updateImageSuccess: (_) {},
                        registerSuccess: (phone) {
                          context.go(Routes.mainPage.path);
                        },
                        orElse: () {});
                  },
                  child: MainButtonComponent(
                    name: context.loc.create,
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        String year = dateController.text.substring(6, 10);
                        String month = dateController.text.substring(3, 5);
                        String day = dateController.text.substring(0, 2);
                        context.read<AuthBloc>().add(AuthEvent.register(
                            name: fullNameController.text,
                            birthDate: "$year-$month-$day",
                            gender: genderController.text == context.loc.man ? "MALE" : "FEMALE",
                            city: "Tashkent"));
                      }
                    },
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onImageButtonPressed(
    ImageSource source, {
    required BuildContext context,
  }) async {
    if (context.mounted) {
      try {
        final XFile? pickedFile = await _picker.pickImage(
          source: source,
          maxWidth: null,
          maxHeight: null,
          imageQuality: 100,
        );
        setState(() async {
          selectedFile = pickedFile;
          imageController.text = pickedFile!.path.split('/').last;
          formData = FormData.fromMap({
            "file": await MultipartFile.fromFile(pickedFile.path, filename: imageController.text),
          });
          context.read<AuthBloc>().add(AuthEvent.updateImage(image: formData));
        });
      } catch (_) {}
    }
  }
}
