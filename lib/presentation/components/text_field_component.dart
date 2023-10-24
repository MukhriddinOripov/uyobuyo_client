import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';

class TextFieldComponent extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final TextStyle? titleTextStyle;
  final TextStyle? style;
  final String? hint;
  final int? minLines;
  final int? maxLines;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final FormFieldValidator<String>? validator;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final bool obscureText;
  final bool readOnly;
  final TextCapitalization? capitalizeText;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixWidget;
  final String? prefixText;
  final Widget? prefixWidget;
  final Color? colorSuffixSvgIcon;
  final Color? titleColor;
  final double? paddingPrefix;
  final Function()? onTap;

  const TextFieldComponent({
    Key? key,
    this.title = '',
    this.controller,
    this.titleTextStyle,
    this.style,
    this.hint,
    this.minLines,
    this.maxLines,
    this.onChanged,
    this.errorText,
    this.validator,
    this.textInputType,
    this.textInputAction,
    this.onFieldSubmitted,
    this.focusNode,
    this.obscureText = false,
    this.capitalizeText,
    this.inputFormatters,
    this.suffixWidget,
    this.prefixText,
    this.prefixWidget,
    this.colorSuffixSvgIcon,
    this.titleColor,
    this.paddingPrefix,
    this.readOnly = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          FittedBox(
            child: Text(
              title,
              style: titleTextStyle ?? AppTheme.data.textTheme.bodySmall?.copyWith(color: titleColor ?? AppTheme.colors.text500),
            ),
          ),
        if (title.isNotEmpty) const SizedBox(height: 8),
        TextFormField(
          readOnly: readOnly,
          onTap: onTap,
          controller: controller,
          focusNode: focusNode,
          minLines: minLines,
          maxLines: maxLines ?? 1,
          style: style ?? AppTheme.data.textTheme.bodyLarge,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: textInputType,
          textInputAction: textInputAction,
          obscureText: obscureText,
          textCapitalization: capitalizeText ?? TextCapitalization.sentences,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: paddingPrefix ?? kPaddingDefault.w),
              child: prefixWidget,
            ),
            errorText: errorText,
            prefixText: prefixText,
            hintText: hint,
            prefixIconConstraints: BoxConstraints(maxWidth: 100.w, maxHeight: 42.h),
            suffixIconConstraints: BoxConstraints(maxWidth: 100.w, maxHeight: 42.h),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: kPaddingDefault.w),
              child: suffixWidget,
            ),
          ),
          validator: validator,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
