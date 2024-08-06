import 'package:chat_app/constants.dart';
import 'package:chat_app/features/home/presentation/view/widget/chat_view_body.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: ChatViewBody(),
      ),
    );
  }
}
