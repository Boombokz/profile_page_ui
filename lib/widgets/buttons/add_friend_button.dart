import 'package:flutter/material.dart';
import 'package:profile_page_accelerator/constants/constants.dart';

class AddFriendButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: OutlinedButton(
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(
                color: blackColor.withOpacity(0.12),
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add friend'.toUpperCase(),
              style: button.copyWith(
                color: blackColor.withOpacity(0.87),
              ),
            ),
            SizedBox(width: 13),
            Icon(
              Icons.add,
              color: blackColor.withOpacity(0.87),
            ),
          ],
        ),
      ),
    );
  }
}
