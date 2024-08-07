import 'package:chat_app/features/home/presentation/view/widget/chat_buble.dart';
import 'package:chat_app/features/home/presentation/view/widget/chat_view_app_bar.dart';
import 'package:chat_app/features/home/presentation/view/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ChatViewAppBar(),
        ChatBuble(),
        ChatBubleForFriend(),
        CustomTextField(
          hintText: 'Message',
        ),
      ],
    );
  }
}
