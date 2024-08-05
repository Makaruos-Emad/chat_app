import 'package:chat_app/core/utils/app_router.dart';
import 'package:chat_app/core/utils/app_style_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'don\'t have account ? ',
          style: StyleText.style24,
        ),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kRegisterView);
          },
          child: Text(
            'Go Register',
            style: StyleText.style24.copyWith(
              color: const Color(0xff00ff00),
            ),
          ),
        )
      ],
    );
  }
}
