import 'package:flutter/material.dart';
import 'package:chat_app/features/home/presentation/view/widget/user_item.dart';

class UserListView extends StatelessWidget {
  const UserListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Column(
            children: [
              UserItem(),
              Divider(
                indent: 0,
                endIndent: 0,
                color: Colors.white24,
              ),
            ],
          );
        },
      ),
    );
  }
}
