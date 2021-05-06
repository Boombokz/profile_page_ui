import 'package:flutter/material.dart';
import 'package:profile_page_accelerator/constants/constants.dart';
import 'package:profile_page_accelerator/widgets/buttons/purple_button.dart';
import 'package:profile_page_accelerator/widgets/listview/media_gridview.dart';

class MediaImagesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16, left: 16, ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My media',
            style: headline5,
          ),
          MediaGridView(),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PurpleButton(
                title: 'Delete',
                backgroundColor: violet500Color,
                isBordered: false,
                textColor: whiteColor,
              ),
              PurpleButton(
                title: 'ADD',
                backgroundColor: whiteColor,
                isBordered: true,
                textColor: violet500Color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
