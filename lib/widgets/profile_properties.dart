import 'package:flutter/material.dart';
import 'package:profile_page_accelerator/constants/constants.dart';

class ProfileProperties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/round_avatar.png'),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: whiteColor,
                    ),
                  )),
              Positioned(
                  right: 1,
                  bottom: 1,
                  child: Container(
                    width: 33.5,
                    height: 33.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: violet500Color,
                    ),
                    child: Icon(
                      Icons.add,
                      color: whiteColor,
                    ),
                  )),
            ],
          ),
          SizedBox(height: 24),
          Text(
            'Tiana Rosser',
            style: subtitle1,
          ),
          Text(
            'Developer',
            style: caption,
          ),
        ],
      ),
    );
  }
}
