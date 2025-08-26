import 'package:injectable/injectable.dart';
import 'package:toodum/source/features/toom/domain/entity/toom_entity.dart';
import 'package:toodum/source/features/toom/domain/repositories/toom_repository.dart';
import 'package:toodum/source/features/toom/domain/usecases/get_tooms_usecase.dart';

@Injectable(as: GetToomsUseCase)
final class GetToomsUseCaseImpl implements GetToomsUseCase {
  const GetToomsUseCaseImpl(this._repository);

  final ToomRepository _repository;

  @override
  Future<List<ToomEntity>> call() {
    return _repository.getTooms();
  }
}