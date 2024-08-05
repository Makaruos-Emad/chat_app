import 'package:chat_app/core/utils/app_style_text.dart';
import 'package:chat_app/features/login/presentation/view/widget/custom_text_from_field.dart';
import 'package:flutter/material.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text(
              'Register',
              style: StyleText.style24,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        CustomTextFromField(hintText: 'Create Email'),
        SizedBox(
          height: 30,
        ),
        CustomTextFromField(hintText: 'Create Password'),
      ],
    );
  }
}
