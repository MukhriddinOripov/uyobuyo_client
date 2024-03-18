import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uyobuyo_client/application/auth/auth_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/date_format.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/gender_format.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/input_masks.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/common/validations/input_validations.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/auth/user_data_model.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/calendar_component.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/components/select_gender_component.dart';
import 'package:uyobuyo_client/presentation/components/select_image_dialog.dart';
import 'package:uyobuyo_client/presentation/components/text_field_component.dart';
import 'package:uyobuyo_client/presentation/pages/base_page.dart';

class EditProfileModule extends BaseScreen {
  final UserData? extra;

  const EditProfileModule({super.key, this.extra});

  @override
  State<BaseScreen> createState() => _EditProfileModuleState();
}

class _EditProfileModuleState extends BaseState<EditProfileModule> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final List<FocusNode> _focusNodes = [FocusNode(), FocusNode(), FocusNode(), FocusNode()];
  final imageController = TextEditingController();
  final fullNameController = TextEditingController();
  final dateController = TextEditingController();
  final genderController = TextEditingController();
  late AuthBloc authBloc;

  @override
  void initState() {
    super.initState();
    authBloc = context.read<AuthBloc>();
    for (var node in _focusNodes) {
      node.addListener(() {
        setState(() {});
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    imageController.text = widget.extra?.imageUrl ?? '';
    fullNameController.text = widget.extra?.name ?? '';
    dateController.text =
        CustomDateFormat.fMonthYear(date: widget.extra?.birthDate ?? DateTime.now(), context: context);
    genderController.text = gender(context: context, gender: widget.extra?.gender);
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BlocListener<AuthBloc, AuthState>(
        listenWhen: (prev, current) {
          return current.maybeWhen(
            loading: (_) => true,
            editUserDataSuccess: (_) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.maybeWhen(
              loading: (loading) {
                showLoading(needLoading: loading);
              },
              editUserDataSuccess: (data) {
                authBloc.add(const AuthEvent.getUserData());
                context.pop();
              },
              orElse: () {});
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault, vertical: 32),
          child: MainButtonComponent(
            name: "Сохарнить",
            onPressed: () {
              print("line 105 ${genderController.text}");
              print("line 105 ${context.loc.man.contains(genderController.text)}");
              if (formKey.currentState?.validate() ?? false) {
                String year = dateController.text.substring(6, 10);
                String month = dateController.text.substring(3, 5);
                String day = dateController.text.substring(0, 2);
                authBloc.add(AuthEvent.editUserData(
                    name: fullNameController.text,
                    birthDate: "$year-$month-$day",
                    gender: context.loc.man.contains(genderController.text) ? "MALE" : "FEMALE",
                    city: "Tashkent"));
              }
            },
          ),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault, vertical: 32),
            child: SingleChildScrollView(
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
                        "Редактировать профиль",
                        overflow: TextOverflow.ellipsis,
                        style: AppTheme.data.textTheme.titleLarge,
                      ),
                      const SizedBox(width: 32)
                    ],
                  ),
                  const SizedBox(height: 32),
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
                    child: Container(
                      height: 48.w,
                      width: 48.w,
                      decoration: const BoxDecoration(color: Colors.transparent, shape: BoxShape.circle),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(kBorderRadiusDefault.r),
                        child: CachedNetworkImage(
                          imageUrl: widget.extra?.imageUrl ?? '',
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          placeholder: (context, url) => Container(
                            height: 48.w,
                            width: 48.w,
                            padding: const EdgeInsets.all(10),
                            child: const CircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) => Center(
                            child: Container(
                              width: 48,
                              height: 48,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: AppTheme.colors.black20),
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(AppImages.noImage),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFieldComponent(
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
                    onTap: () {
                      calendarComponent(
                          context: context,
                          selectedDate: (date) {
                            dateController.text = date;
                          });
                    },
                    readOnly: true,
                    title: context.loc.bright_day,
                    focusNode: _focusNodes[1],
                    controller: dateController,
                    inputFormatters: [DateTextFormatter()],
                    hint: "ХХ.XX.XXXX",
                    onFieldSubmitted: (val) {},
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.number,
                    suffixWidget: SvgPicture.asset(
                      AppIcons.calendar,
                      color: _focusNodes[1].hasFocus ? AppTheme.colors.primary : AppTheme.colors.black60,
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
                  TextFieldComponent(
                    onTap: () {
                      selectGenderComponent(
                          context: context,
                          selectedGender: (val) {
                            genderController.text = val;
                          },
                          gender: genderController.text);
                    },
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onImageButtonPressed(ImageSource source, {required BuildContext context}) async {
    if (context.mounted) {
      try {
        final ImagePicker picker = ImagePicker();

        final XFile? file = await picker.pickImage(
          source: source,
          maxWidth: null,
          maxHeight: null,
          imageQuality: 100,
        );
        imageController.text = file?.name ?? 'Image';
        if (file != null) {
          authBloc.add(AuthEvent.updateImage(image: file));
        }
      } catch (_) {}
    }
  }
}
