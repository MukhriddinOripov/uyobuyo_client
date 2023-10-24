import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uyobuyo_client/application/main_page_manage/main_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/common/validations/input_validations.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/components/select_image_dialog.dart';
import 'package:uyobuyo_client/presentation/components/text_field_component.dart';
import 'package:uyobuyo_client/presentation/modules/main_module/delivery_module/put_comment.dart';

Future<void> registerDeliveryDialog({
  required BuildContext context,
  String? btnTitle,
}) {
  final ImagePicker picker = ImagePicker();
  XFile? selectedFile;
  late FormData formData;
  final imageController = TextEditingController();
  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32.r),
        topRight: Radius.circular(32.r),
      ),
    ),
    builder: (context) {
      return StatefulBuilder(builder: (context, setState) {
        Future<void> onImageButtonPressed(
          ImageSource source, {
          required BuildContext context,
        }) async {
          if (context.mounted) {
            try {
              final XFile? pickedFile = await picker.pickImage(
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
                // context.read<AuthBloc>().add(AuthEvent.updateImage(image: formData));
              });
            } catch (_) {}
          }
        }

        return SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.95,
          child: Padding(
            padding: EdgeInsets.only(
              top: 12.h,
              left: 16.w,
              right: 16.w,
              bottom: 49.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 6.h,
                    width: 48.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3E8FC),
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
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
                        )),
                    Text(
                      "Детали посылки",
                      style: AppTheme.data.textTheme.titleLarge,
                    ),
                    const SizedBox(width: 32)
                  ],
                ),
                SizedBox(height: 32.h),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: TextFieldComponent(
                                title: "Вес",
                                titleTextStyle: AppTheme.data.textTheme.bodySmall?.copyWith(
                                  fontSize: 17.sp,
                                  color: AppTheme.colors.black60,
                                ),
                                hint: "Кг",
                                textInputAction: TextInputAction.next,
                                textInputType: TextInputType.number,
                                validator: (v) => InputValidations.defaultV(v ?? '').fold(
                                  (l) => l.maybeMap(
                                    empty: (val) {
                                      return 'введите срок действия';
                                    },
                                    orElse: () {
                                      return null;
                                    },
                                  ),
                                  (r) => null,
                                ),
                                onChanged: (v) {
                                  if (v.length > 3) {
                                    setState(() {});
                                  }
                                },
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: TextFieldComponent(
                                titleTextStyle: AppTheme.data.textTheme.bodySmall?.copyWith(
                                  fontSize: 17.sp,
                                  color: AppTheme.colors.black60,
                                ),
                                title: "Ширина",
                                hint: "См",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: TextFieldComponent(
                                title: "Высота",
                                titleTextStyle: AppTheme.data.textTheme.bodySmall?.copyWith(
                                  fontSize: 17.sp,
                                  color: AppTheme.colors.black60,
                                ),
                                hint: "См",
                                textInputAction: TextInputAction.next,
                                textInputType: TextInputType.number,
                                validator: (v) => InputValidations.defaultV(v ?? '').fold(
                                  (l) => l.maybeMap(
                                    empty: (val) {
                                      return 'введите срок действия';
                                    },
                                    orElse: () {
                                      return null;
                                    },
                                  ),
                                  (r) => null,
                                ),
                                onChanged: (v) {
                                  if (v.length > 3) {
                                    setState(() {});
                                  }
                                },
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: TextFieldComponent(
                                titleTextStyle: AppTheme.data.textTheme.bodySmall?.copyWith(
                                  fontSize: 17.sp,
                                  color: AppTheme.colors.black60,
                                ),
                                title: "Длина",
                                hint: "См",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        TextFieldComponent(
                          onTap: () async {
                            await showImageTypeComponent(
                                context: context,
                                valueChanged: (value) async {
                                  if (value) {
                                    await onImageButtonPressed(ImageSource.gallery, context: context);
                                  } else {
                                    await onImageButtonPressed(ImageSource.camera, context: context);
                                  }
                                });
                          },
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
                        const SizedBox(height: 16),
                        TextFieldComponent(
                          title: "Фамилия и имя получателя",
                          controller: fullNameController,
                          hint: "Введите имя получателя",
                          onFieldSubmitted: (val) {},
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.text,
                          validator: (v) => InputValidations.defaultV(v ?? '').fold(
                            (l) => l.maybeMap(
                              empty: (_) => "Введите получателя имя и фамилия",
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFieldComponent(
                          title: "Номер телефона получателя",
                          controller: phoneController,
                          hint: "+998 (__) ___-__-__",
                          onFieldSubmitted: (val) {},
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.text,
                          validator: (v) => InputValidations.defaultV(v ?? '').fold(
                            (l) => l.maybeMap(
                              empty: (_) => "Введите получателя номер",
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                        ),
                        const SizedBox(height: 16),
                        InkWell(
                          onTap: () {
                            putCommentDialog(context: context);
                          },
                          child: Column(
                            children: [
                              Divider(color: AppTheme.colors.black20, height: 0.1),
                              Container(
                                color: Colors.transparent,
                                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      AppIcons.message,
                                      width: 24,
                                      height: 24,
                                      color: AppTheme.colors.black80,
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      "Комментарий",
                                      style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: AppTheme.colors.black80),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: AppTheme.colors.black20, height: 0.1),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.h),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Стоимость поездки',
                      style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      "390 000 UZS",
                      style: AppTheme.data.textTheme.titleLarge,
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                MainButtonComponent(
                  name: "Продолжить",
                  onPressed: () {
                    context.read<MainBloc>().add(const MainEvent.createOrder());
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      });
    },
  );
}
