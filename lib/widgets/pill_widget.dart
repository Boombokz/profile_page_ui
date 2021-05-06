import 'package:flutter/material.dart';
import 'package:profile_page_accelerator/constants/colors.dart';

class PillWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 14, top: 24),
      child: Divider(
        indent: MediaQuery.of(context).size.width * 0.4,
        endIndent: MediaQuery.of(context).size.width * 0.4,
        height: 2,
        color: blackColor.withOpacity(0.6),
      ),
    );
  }
}
