import 'package:chat_app/core/utils/app_style_text.dart';
import 'package:chat_app/features/login/presentation/view/widget/custom_text_from_field.dart';
import 'package:flutter/material.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text(
              'Login',
              style: StyleText.style24,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        CustomTextFromField(hintText: 'Email'),
        SizedBox(
          height: 30,
        ),
        CustomTextFromField(hintText: 'Password'),
      ],
    );
  }
}
