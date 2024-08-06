import 'package:chat_app/constants.dart';
import 'package:chat_app/features/home/presentation/view/widget/home_view_app_bar.dart';
import 'package:chat_app/features/home/presentation/view/widget/user_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kPrimaryPadding),
      child: Column(
        children: [
          HomeViewAppBar(),
          SizedBox(
            height: 10,
          ),
          UserListView(),
        ],
      ),
    );
  }
}
