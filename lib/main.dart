import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get_storage/get_storage.dart';
import 'package:toodum/app.dart';
import 'package:toodum/source/core/flavor/flavor.dart';
import 'package:toodum/source/core/inject/inject.dart';
import 'package:toodum/source/core/inject/inject_env.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  configureDependencies(InjectEnv.impl);

  setUrlStrategy(PathUrlStrategy());

  initialize(FlavorConfig(flavor: AppFlavor.dev));

  runApp((ProviderScope(child: MyApp())));
}
