import 'package:chat_app/core/utils/app_router.dart';
import 'package:chat_app/core/utils/app_style_text.dart';
import 'package:chat_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kChatView);
      },
      child: SizedBox(
        height: 90,
        width: double.infinity,
        child: Row(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white30,
              backgroundImage: AssetImage(AssetsData.testImage),
            ),
            const SizedBox(
              width: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'name',
                    style: StyleText.style24,
                  ),
                  Text(
                    'message',
                    style: StyleText.style18,
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
