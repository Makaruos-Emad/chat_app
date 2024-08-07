import 'package:chat_app/core/utils/app_style_text.dart';
import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
            color: Color(0xff001a4d),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(32),
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            )),
        child: const Text(
          'hallo i\'m makaruos',
          style: StyleText.style20,
        ),
      ),
    );
  }
}

class ChatBubleForFriend extends StatelessWidget {
  const ChatBubleForFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
            color: Color(0xff1a66ff),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            )),
        child: const Text(
          'hallo i\'m makaruos',
          style: StyleText.style20,
        ),
      ),
    );
  }
}
