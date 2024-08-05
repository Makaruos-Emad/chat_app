import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField(
      {super.key,
      required this.hintText,
      this.onChanged,
      this.onSaved,
      this.maxLines});

  final String hintText;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      maxLines: maxLines,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field Is Required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
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
