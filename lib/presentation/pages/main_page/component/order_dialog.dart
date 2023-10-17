import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/application/select_address/select_address_cubit.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:uyobuyo_client/presentation/components/text_field_component.dart';

Future<void> orderModalBottomSheetComponent(
    {required BuildContext context,
    required String title,
    String? btnTitle,
    Function()? onTap,
    Function()? onTapChooseMap,
    String? addressControllerText}) {
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
      final addressController = TextEditingController();
      addressController.text = addressControllerText ?? '';
      return BlocListener<SelectAddressCubit, SelectAddressState>(
        listener: (context, state) {
          if (state is SelectAddressFrom) {
            addressControllerText = state.address;
          }
          if (state is SelectAddressTo) {
            addressControllerText = state.address;
          }
        },
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.9,
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
                Text(
                  title,
                  style: AppTheme.data.textTheme.displaySmall?.copyWith(fontSize: 24),
                ),
                SizedBox(height: 16.h),
                TextFieldComponent(
                  controller: addressController,
                  suffixWidget: TextButton(
                      onPressed: onTapChooseMap,
                      child: Text(
                        "Карта",
                        style: AppTheme.data.textTheme.bodyMedium?.copyWith(color: AppTheme.colors.primary),
                      )),
                ),
                const Spacer(),
                MainButtonComponent(
                  name: btnTitle ?? context.loc.back,
                  onPressed: onTap ?? () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
