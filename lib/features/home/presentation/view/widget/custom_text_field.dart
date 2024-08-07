import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.onSubmitted, this.suffixIcon});

  final String hintText;
  final void Function(String?)? onSubmitted;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      maxLines: 4,
      minLines: 1,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        border: textFiledBorderDecoration(),
        enabledBorder: textFiledBorderDecoration(),
        focusedBorder: textFiledBorderDecoration(),
      ),
    );
  }

  OutlineInputBorder textFiledBorderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
