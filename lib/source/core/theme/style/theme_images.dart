const _path = 'assets/images';

final class ThemeImages {
  const ThemeImages._();

  static String getImageByString(String name) => '$_path/$name.jpg';
}
