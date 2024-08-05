import 'package:chat_app/constants.dart';
import 'package:chat_app/features/login/presentation/view/widget/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: LoginViewBody(),
      ),
    );
  }
}
