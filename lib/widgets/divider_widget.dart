import 'package:flutter/material.dart';
import 'package:profile_page_accelerator/constants/constants.dart';

class DividerWidget extends StatelessWidget {
  final double top;
  final double bottom;
  final double right;
  final double left;

  DividerWidget(
      {required this.top,
      required this.bottom,
      required this.right,
      required this.left});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        bottom: bottom,
        right: right,
        left: left,
      ),
      child: Divider(
        height: 1,
        color: darkColor.withOpacity(0.08),
      ),
    );
  }
}
