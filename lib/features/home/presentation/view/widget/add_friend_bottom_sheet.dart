import 'package:chat_app/features/home/presentation/view/widget/add_friend.dart';
import 'package:flutter/material.dart';

class AddFriendBottomSheet extends StatelessWidget {
  const AddFriendBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: Padding(
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: const SingleChildScrollView(
          child: AddNewFriend(),
        ),
      ),
    );
  }
}
