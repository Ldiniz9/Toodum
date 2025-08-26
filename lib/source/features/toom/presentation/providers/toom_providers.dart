import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toodum/source/features/toom/data/datasources/toom_datasource.dart';
import 'package:toodum/source/features/toom/data/datasources/toom_datasource_mock.dart';
import 'package:toodum/source/features/toom/data/repositories/toom_repository_impl.dart';
import 'package:toodum/source/features/toom/domain/repositories/toom_repository.dart';
import 'package:toodum/source/features/toom/domain/usecases/get_tooms_usecase.dart';
import 'package:toodum/source/features/toom/domain/usecases/get_tooms_usecase_impl.dart';
import 'package:toodum/source/features/toom/presentation/notifiers/toom_notifier_impl.dart';
import 'package:toodum/source/features/toom/presentation/state/toom_state.dart';

final toomDataSourceProvider = Provider<ToomDataSource>((ref) {
  return const ToomDataSourceMock();
});

final toomRepositoryProvider = Provider<ToomRepository> ((ref){
  return ToomRepositoryImpl(ref.watch(toomDataSourceProvider));
});

final getToomsUseCaseProvider = Provider<GetToomsUseCase>((ref) {
  return GetToomsUseCaseImpl(ref.watch(toomRepositoryProvider));
});

final toomNotifierProvider = StateNotifierProvider<ToomNotifierImpl, ToomState>((ref) {
  return ToomNotifierImpl(getToomUseCase: ref.read(getToomsUseCaseProvider),
  );
});