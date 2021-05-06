import 'package:flutter/material.dart';
import 'package:profile_page_accelerator/constants/constants.dart';
import 'package:profile_page_accelerator/widgets/divider_widget.dart';
import 'package:profile_page_accelerator/widgets/listview/font_type_listview.dart';
import 'package:profile_page_accelerator/widgets/friends_list_widget.dart';
import 'package:profile_page_accelerator/widgets/media_images_widget.dart';
import 'package:profile_page_accelerator/widgets/pill_widget.dart';
import 'package:profile_page_accelerator/widgets/profile_properties.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: Icon(
          Icons.arrow_back,
          color: blackColor,
        ),

        title: Text(
          'Profile',
          style: headline6,
        ),
        centerTitle: false,
        brightness: Brightness.light,
        elevation: 1,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.more_vert,
              color: blackColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProfileProperties(),
              DividerWidget(top: 24, bottom: 12, right: 18, left: 17),
              FontTypeListView(),
              DividerWidget(top: 16, bottom: 16, right: 18, left: 17),
              FriendsListWidget(),
              DividerWidget(top: 16, bottom: 16, right: 18, left: 17),
              MediaImagesWidget(),
              PillWidget(),

            ],
          ),
        ),
      ),
    );
  }
}
