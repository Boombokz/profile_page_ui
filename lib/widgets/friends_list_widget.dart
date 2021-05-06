import 'package:flutter/material.dart';
import 'package:profile_page_accelerator/constants/constants.dart';
import 'package:profile_page_accelerator/widgets/buttons/add_friend_button.dart';
import 'package:profile_page_accelerator/widgets/listview/friends_listview.dart';

class FriendsListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Friends',
              style: body1,
            ),
          ),
          FriendsListView(),
          AddFriendButton(),
        ],
      ),
    );
  }
}
