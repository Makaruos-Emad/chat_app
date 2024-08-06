import 'package:chat_app/core/utils/app_style_text.dart';
import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Chat App',
              style: StyleText.style30,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 34,
              ),
            )
          ],
        ),
        const Divider(
          indent: 0,
          endIndent: 0,
          color: Colors.white,
        ),
      ],
    );
  }
}
