import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    Key? key,
    this.initialValue,
    this.maxLines,
    required this.inputDecoration,
    this.textStyle,
    this.textValidator,
    this.textInputAction = TextInputAction.next,
    required this.obscureText,
    this.keyboardType = TextInputType.text,
    this.textAlignment,
    this.isEnabled = true,
    this.capitalization = TextCapitalization.none,
  }) : super(
          key: key,
        );
  final int? maxLines;
  final bool isEnabled;
  final String? initialValue;
  final InputDecoration? inputDecoration;
  final TextInputType keyboardType;
  final bool? obscureText;
  final TextInputAction textInputAction;
  final TextStyle? textStyle;
  final FormFieldValidator<String>? textValidator;
  final TextAlign? textAlignment;
  final TextCapitalization capitalization;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    enabled: isEnabled,
      maxLines: maxLines ?? 1,
      initialValue: initialValue ?? "",
      textAlign: textAlignment ?? TextAlign.start,
      textCapitalization: capitalization,
      obscureText: obscureText!,
      style: textStyle,
      keyboardType: keyboardType,
      validator: textValidator,
      decoration: inputDecoration,
    );
  }
}
