import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/theme.dart';
import 'label.dart';

class InputText extends StatelessWidget {
  final String? label;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? initialValue;
  final Widget? widget;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool autoFocus;
  final bool readOnly;
  final bool? spaceBottom;
  final bool obscureText;
  final bool autocorrect;
  final bool enableSuggestions;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final void Function(String value)? onChanged;
  final void Function(String? value)? onSaved;
  final VoidCallback? onTap;

  const InputText({
    Key? key,
    this.label,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.initialValue,
    this.widget,
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength,
    this.autoFocus = false,
    this.readOnly = false,
    this.spaceBottom = true,
    this.obscureText = false,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.controller,
    this.textInputAction = TextInputAction.next,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Label(label: label ?? ''),
          const SizedBox(height: 5),
        ],
        TextFormField(
          autofocus: autoFocus,
          readOnly: readOnly,
          controller: controller,
          initialValue: initialValue,
          obscureText: obscureText,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          scrollPhysics: const BouncingScrollPhysics(),
          minLines: minLines,
          maxLines: maxLines,
          maxLength: maxLength,
          // maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
          validator: validator,
          inputFormatters: inputFormatters,
          autocorrect: autocorrect,
          enableSuggestions: enableSuggestions,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            labelStyle: inputLabelTextStyle,
            hintStyle: inputHintTextTextStyle,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            focusColor: primaryColor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: primaryColor),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: prefixIcon != null ? 5 : 15,
              vertical: 15,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: inputHintTextColor),
            ),
          ),
          onChanged: onChanged,
          onSaved: onSaved,
          onTap: onTap,
        ),
        if (spaceBottom!) ...[
          const SizedBox(height: 15),
        ],
      ],
    );
  }
}
