// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:get_storage/get_storage.dart' as _i792;
import 'package:injectable/injectable.dart' as _i526;

import '../network/http_client.dart' as _i1069;
import '../network/http_client_impl.dart' as _i523;
import 'inject.dart' as _i955;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectionModule = _$InjectionModule();
    gh.lazySingleton<_i792.GetStorage>(() => injectionModule.getStorage);
    gh.lazySingleton<_i1069.IHttpClient>(() => _i523.HttpClient());
    return this;
  }
}

class _$InjectionModule extends _i955.InjectionModule {}
