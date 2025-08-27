import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
// Só importe flutter_web_plugins se for web
// ignore: uri_does_not_exist
// Importação condicional para web será feita dentro do main
import 'package:get_storage/get_storage.dart';
import 'package:toodum/app.dart';
import 'package:toodum/source/core/flavor/flavor.dart';
import 'package:toodum/source/core/inject/inject.dart';
import 'package:toodum/source/core/inject/inject_env.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  configureDependencies(InjectEnv.mock);

    if (kIsWeb) {
      // Importação dinâmica para evitar erro em outras plataformas
      // ignore: avoid_dynamic_calls
      await Future.microtask(() async {
        final webPlugins = await importWebPlugins();
        webPlugins.setUrlStrategy(webPlugins.PathUrlStrategy());
      });
  }

  initialize(FlavorConfig(flavor: AppFlavor.dev));

  runApp((ProviderScope(child: MyApp())));
  }

  // Função auxiliar para importação condicional
  dynamic importWebPlugins() => throw UnsupportedError('Not supported');


