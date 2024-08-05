import 'package:chat_app/constants.dart';
import 'package:chat_app/features/login/presentation/view/widget/register_view_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: RegisterViewBody(),
    );
  }
}
