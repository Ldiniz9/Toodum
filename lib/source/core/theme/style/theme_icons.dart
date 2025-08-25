const _path = 'assets/icons';

final class ThemeIcons {
  const ThemeIcons._();

  static String getIconByString(String name) => '$_path/$name.svg';
}
