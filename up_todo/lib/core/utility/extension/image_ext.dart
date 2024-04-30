import '../../constants/path/image_path.dart';

extension ImageExt on ImagePath {
  String toPathPng() {
    return 'assets/images/im_$name.png';
  }
}
