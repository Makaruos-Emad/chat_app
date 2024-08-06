import 'package:chat_app/core/utils/app_style_text.dart';
import 'package:chat_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatViewAppBar extends StatelessWidget {
  const ChatViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: 16,
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 32,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
          radius: 28,
          backgroundColor: Colors.white30,
          backgroundImage: AssetImage(AssetsData.testImage),
        ),
        const SizedBox(
          width: 15,
        ),
        const Text(
          'name',
          style: StyleText.style30,
        )
      ],
    );
  }
}
