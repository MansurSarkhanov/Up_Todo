enum IconPath { google }

extension IconPathExt on IconPath {
  String toPathSvg() {
    return 'assets/icons/ic_$name.svg';
  }
}
