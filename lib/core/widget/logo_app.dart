import 'package:chat_app/core/utils/app_style_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FontAwesomeIcons.solidComments,
            size: 100,
          ),
          Text(
            'Chat App',
            style: StyleText.style50,
          ),
        ],
      ),
    );
  }
}
