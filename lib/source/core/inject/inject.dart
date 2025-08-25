import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:toodum/source/core/inject/inject.config.dart';

final getIt = GetIt.instance;

@module
abstract class InjectionModule {
  @lazySingleton
  GetStorage get getStorage => GetStorage();
}

@InjectableInit(preferRelativeImports: true)
void configureDependencies(String env) {
  getIt.init(environment: env);
}
