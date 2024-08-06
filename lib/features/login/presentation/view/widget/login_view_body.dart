import 'package:chat_app/constants.dart';
import 'package:chat_app/core/utils/app_router.dart';
import 'package:chat_app/core/widget/custom_button.dart';
import 'package:chat_app/core/widget/logo_app.dart';
import 'package:chat_app/features/login/presentation/view/widget/login_section.dart';
import 'package:chat_app/features/login/presentation/view/widget/register_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPrimaryPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const LogoApp(),
            const SizedBox(
              height: 70,
            ),
            const LoginSection(),
            const SizedBox(
              height: 30,
            ),
            const RegisterText(),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kHomeView);
              },
              text: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
