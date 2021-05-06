import 'package:flutter/material.dart';
import 'package:profile_page_accelerator/constants/constants.dart';

class PurpleButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final bool isBordered;

  PurpleButton(
      {required this.title,
      required this.backgroundColor,
      required this.textColor,
      required this.isBordered});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      child: OutlinedButton(
        style: ButtonStyle(
          overlayColor: !isBordered
              ? MaterialStateProperty.all(whiteColor.withOpacity(0.12))
              : MaterialStateProperty.all(blueColor.withOpacity(0.12)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: Alignment.center,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: isBordered
                  ? BorderSide(
                      color: blackColor.withOpacity(0.12),
                    )
                  : BorderSide.none,
            ),
          ),
          foregroundColor: MaterialStateProperty.all(textColor),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        onPressed: () {},
        child: Text(
          '$title'.toUpperCase(),
          style: button,
        ),
      ),
    );
  }
}
