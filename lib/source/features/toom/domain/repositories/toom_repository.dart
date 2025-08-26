import 'package:toodum/source/features/toom/domain/entity/toom_entity.dart';

abstract class ToomRepository {

  Future<List<ToomEntity>> getTooms();
}
