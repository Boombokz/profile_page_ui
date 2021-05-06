import 'package:flutter/material.dart';
import 'package:profile_page_accelerator/constants/constants.dart';
import 'package:profile_page_accelerator/data/data_source/friends_data_source.dart';

class FriendsListView extends StatelessWidget {
  final FriendsDataSource friendsDataSource = FriendsDataSource();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 307,
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  child: Image.network(
                    friendsDataSource.getFriendList()[index].image,
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${friendsDataSource.getFriendList()[index].name}',
                        style: subtitle1,
                      ),
                      Text(
                        '${friendsDataSource.getFriendList()[index].jobTitle}',
                        style:
                            body2.copyWith(color: blackColor.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.close,
                    color: red200Color,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              top: 16,
              bottom: 16,
            ),
            child: Divider(
              height: 1,
              color: darkColor.withOpacity(0.08),
              indent: MediaQuery.of(context).size.width * 0.19,
            ),
          );
        },
        itemCount: friendsDataSource.getFriendList().length,
        padding: EdgeInsets.only(
          bottom: 34,
          top: 16,
        ),
      ),
    );
  }
}
