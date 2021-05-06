import 'package:flutter/material.dart';
import 'package:profile_page_accelerator/constants/constants.dart';
import 'package:profile_page_accelerator/data/data_source/image_data_source.dart';

class MediaGridView extends StatelessWidget {
  final ImageDataSource imageDataSource = ImageDataSource();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.54,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 17,
            mainAxisSpacing: 13,
          ),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 2),
          shrinkWrap: true,
          itemCount: imageDataSource.getImages().length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.44),
              ),
              child: Stack(children: [
                Image.asset(
                  imageDataSource.getImages()[index].path,
                  scale: 0.5,
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: whiteColor,
                    ),
                  ),
                ),
                Positioned(
                  right: 9,
                  top: 9,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: red200Color,
                      ),
                      child: Icon(
                        Icons.close,
                        color: whiteColor,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ]),
            );
          }),
    );
  }
}
