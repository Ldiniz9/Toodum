import 'package:toodum/source/features/toom/domain/entity/toom_entity.dart';

abstract class GetToomsUseCase {
  Future<List<ToomEntity>> call();
}