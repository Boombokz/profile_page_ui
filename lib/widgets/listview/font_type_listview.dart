import 'package:flutter/material.dart';
import 'package:profile_page_accelerator/constants/colors.dart';
import 'package:profile_page_accelerator/constants/text_styles.dart';
import 'package:profile_page_accelerator/data/data_source/font_type_data_source.dart';

class FontTypeListView extends StatefulWidget {
  @override
  _FontTypeListViewState createState() => _FontTypeListViewState();
}

class _FontTypeListViewState extends State<FontTypeListView> {
  FontTypeDataSource fontTypeDataSource = FontTypeDataSource();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Select type',
              style: body1,
            ),
          ),
          SizedBox(height: 12),
          Container(
            height: 34,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16),
                separatorBuilder: (context, index) {
                  return SizedBox(width: 8);
                },
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: fontTypeDataSource.getFontTypes().length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                      decoration: BoxDecoration(
                        border: currentIndex == index
                            ? Border.all(width: 1, color: borderColor)
                            : Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(68),
                        color: currentIndex == index
                            ? fontBackgroundColor
                            : blackColor.withOpacity(0.08),
                      ),
                      child: Text(
                        '${fontTypeDataSource.getFontTypes()[index]}',
                        style: body2.copyWith(
                          color: currentIndex == index
                              ? violet500Color
                              : blackColor.withOpacity(0.38),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
