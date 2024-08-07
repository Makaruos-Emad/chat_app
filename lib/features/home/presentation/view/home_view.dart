import 'package:chat_app/constants.dart';
import 'package:chat_app/features/home/presentation/view/widget/add_friend_bottom_sheet.dart';
import 'package:chat_app/features/home/presentation/view/widget/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddFriendBottomSheet();
            },
          );
        },
        child: const Icon(
          Icons.add_comment_sharp,
          color: kPrimaryColor,
        ),
      ),
      backgroundColor: kPrimaryColor,
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
