import 'package:toodum/source/features/toom/data/models/toom_model.dart';

abstract class ToomDataSource {
  const ToomDataSource();

  Future<List<ToomModel>> getTooms();
}