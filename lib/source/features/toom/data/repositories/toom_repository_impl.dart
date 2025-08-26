import 'package:injectable/injectable.dart';
import 'package:toodum/source/features/toom/data/datasources/toom_datasource.dart';
import 'package:toodum/source/features/toom/domain/entity/toom_entity.dart';
import 'package:toodum/source/features/toom/domain/repositories/toom_repository.dart';

@Injectable(as: ToomRepository)
final class ToomRepositoryImpl implements ToomRepository {
  final ToomDataSource _toomDataSource;

  const ToomRepositoryImpl(this._toomDataSource);

  @override
  Future<List<ToomEntity>> getTooms() async {
    return _toomDataSource.getTooms();
  }
}
