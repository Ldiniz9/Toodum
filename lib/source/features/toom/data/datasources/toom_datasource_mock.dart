import 'package:injectable/injectable.dart';
import 'package:toodum/source/core/inject/inject_env.dart';
import 'package:toodum/source/features/toom/data/datasources/toom_datasource.dart';
import 'package:toodum/source/features/toom/data/mocks/toom_mock.dart';
import 'package:toodum/source/features/toom/data/models/toom_model.dart';

@Injectable(as: ToomDataSource, env: [InjectEnv.mock])
final class ToomDataSourceMock implements ToomDataSource {
  const ToomDataSourceMock();

  @override
  Future<List<ToomModel>> getTooms() async {
    await Future.delayed(const Duration(seconds: 1));

    return ToomMock.response
        .map((e) => ToomModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
  
}