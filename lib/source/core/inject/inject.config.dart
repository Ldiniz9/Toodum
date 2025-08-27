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

import '../../features/task/data/datasources/task_datasource.dart' as _i202;
import '../../features/task/data/datasources/task_datasource_mock.dart'
    as _i805;
import '../../features/task/data/repositories/task_repository_impl.dart'
    as _i325;
import '../../features/task/domain/repositories/task_repository.dart' as _i81;
import '../../features/task/domain/usecases/create_task_usecase.dart' as _i292;
import '../../features/task/domain/usecases/create_task_usecase_impl%20copy.dart'
    as _i954;
import '../../features/task/domain/usecases/get_task_usecase.dart' as _i47;
import '../../features/task/domain/usecases/get_task_usecase_impl.dart'
    as _i474;
import '../../features/toom/data/datasources/toom_datasource.dart' as _i779;
import '../../features/toom/data/datasources/toom_datasource_mock.dart'
    as _i618;
import '../../features/toom/data/repositories/toom_repository_impl.dart'
    as _i893;
import '../../features/toom/domain/repositories/toom_repository.dart' as _i741;
import '../../features/toom/domain/usecases/get_tooms_usecase.dart' as _i149;
import '../../features/toom/domain/usecases/get_tooms_usecase_impl.dart'
    as _i898;
import '../network/http_client.dart' as _i1069;
import '../network/http_client_impl.dart' as _i523;
import 'inject.dart' as _i955;

const String _mock = 'mock';

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
    gh.factory<_i202.TaskDataSource>(
      () => const _i805.TaskDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i779.ToomDataSource>(
      () => const _i618.ToomDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i741.ToomRepository>(
      () => _i893.ToomRepositoryImpl(gh<_i779.ToomDataSource>()),
    );
    gh.factory<_i149.GetToomsUseCase>(
      () => _i898.GetToomsUseCaseImpl(gh<_i741.ToomRepository>()),
    );
    gh.factory<_i81.TaskRepository>(
      () => _i325.TaskRepositoryImpl(gh<_i202.TaskDataSource>()),
    );
    gh.factory<_i47.GetTaskUseCase>(
      () => _i474.GetTaskUseCaseImpl(gh<_i81.TaskRepository>()),
    );
    gh.factory<_i292.CreateTaskUseCase>(
      () => _i954.CreateTaskUseCaseImpl(gh<_i81.TaskRepository>()),
    );
    return this;
  }
}

class _$InjectionModule extends _i955.InjectionModule {}
