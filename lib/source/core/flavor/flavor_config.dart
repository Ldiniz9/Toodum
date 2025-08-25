import 'package:toodum/source/core/flavor/app_flavor.dart';

final class FlavorConfig {
  FlavorConfig._internal(this.flavor);

  final AppFlavor flavor;

  static late FlavorConfig _instance;

  factory FlavorConfig({required AppFlavor flavor}) {
    _instance = FlavorConfig._internal(flavor);
    return _instance;
  }

  static FlavorConfig get instance => _instance;

  String get baseAPIUrl {
    return switch (flavor) {
      AppFlavor.dev => 'https://api.dev/api',
      AppFlavor.staging => 'https://api.staging/api',
      AppFlavor.prod => 'https://api.prod/api',
    };
  }
}
