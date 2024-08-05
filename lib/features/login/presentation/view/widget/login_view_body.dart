import 'package:chat_app/features/login/presentation/view/widget/custom_text_from_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFromField(
      hintText: 'email',
    );
  }
}
