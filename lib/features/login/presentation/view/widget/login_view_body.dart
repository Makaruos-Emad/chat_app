import 'package:chat_app/constants.dart';
import 'package:chat_app/core/widget/logo_app.dart';
import 'package:chat_app/features/login/presentation/view/widget/login_section.dart';
import 'package:chat_app/features/login/presentation/view/widget/register_text.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoApp(),
            SizedBox(
              height: 70,
            ),
            LoginSection(),
            SizedBox(
              height: 30,
            ),
            RegisterText(),
          ],
        ),
      ),
    );
  }
}
