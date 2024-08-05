import 'package:chat_app/core/utils/app_style_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Alredy have account ? ',
          style: StyleText.style24,
        ),
        GestureDetector(
          onTap: () {
            Future.delayed(
              const Duration(seconds: 2),
              () {
                GoRouter.of(context).pop();
              },
            );
          },
          child: Text(
            'Go Login',
            style: StyleText.style24.copyWith(
              color: const Color(0xff00ff00),
            ),
          ),
        )
      ],
    );
  }
}
