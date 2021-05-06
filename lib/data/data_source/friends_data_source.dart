import 'package:profile_page_accelerator/models/friend.dart';

class FriendsDataSource {
  List<Friend> _friendsList = [
    Friend(image: 'https://c.pxhere.com/photos/10/06/beauty_woman_portrait_face_hair_wind_femininity_noble-635897.jpg!s', name: 'Dolorez White', jobTitle: 'Developer'),
    Friend(image: 'https://c.pxhere.com/photos/65/5f/human_man_face_view_bart_hat_portrait-618656.jpg!s', name: 'Jim Button', jobTitle: 'Developer'),
    Friend(image: 'https://c.pxhere.com/photos/b9/c1/fashion_beauty_model_portrait_girl_woman_hair_face-839840.jpg!s', name: 'Mary Jameson', jobTitle: 'Developer'),
    Friend(image: 'https://c.pxhere.com/photos/dd/24/girl_eyes_makeup_sexy_glamor_model_portrait_pretty-998102.jpg!s', name: 'Black Widow', jobTitle: 'Developer'),
    Friend(image: 'https://c.pxhere.com/photos/98/e9/woman_girl_headphones_music_listen_to_relaxes_portrait_tranquility-850583.jpg!s', name: 'Samantha Smith', jobTitle: 'Developer'),
  ];

  List<Friend> getFriendList() {
    return _friendsList;
  }

}