import 'package:profile_page_accelerator/models/image.dart';

class ImageDataSource {
  List<Image> _images = [
    Image(path: 'assets/images/images_gridview/image1.png'),
    Image(path: 'assets/images/images_gridview/image2.png'),
    Image(path: 'assets/images/images_gridview/image3.png'),
    Image(path: 'assets/images/images_gridview/image4.png'),
    Image(path: 'assets/images/images_gridview/image5.png'),
    Image(path: 'assets/images/images_gridview/image6.png'),
    Image(path: 'assets/images/images_gridview/image7.png'),
    Image(path: 'assets/images/images_gridview/image8.png'),
    Image(path: 'assets/images/images_gridview/image9.png'),
  ];

  List<Image> getImages() {
    return _images;
  }
}
