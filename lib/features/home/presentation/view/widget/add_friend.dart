import 'package:chat_app/core/utils/app_style_text.dart';
import 'package:chat_app/core/widget/custom_button.dart';
import 'package:chat_app/features/home/presentation/view/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddNewFriend extends StatelessWidget {
  const AddNewFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          'Add Friend',
          style: StyleText.style30,
        ),
        SizedBox(
          height: 30,
        ),
        CustomTextField(hintText: 'Search Your Friend'),
        SizedBox(
          height: 150,
        ),
        CustomButton(text: 'Add Friend'),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
