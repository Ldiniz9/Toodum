import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toodum/source/features/toom/domain/usecases/get_tooms_usecase.dart';
import 'package:toodum/source/features/toom/presentation/notifiers/toom_notifier.dart';
import 'package:toodum/source/features/toom/presentation/state/toom_state.dart';

final class ToomNotifierImpl extends StateNotifier<ToomState> implements ToomNotifier {
  final GetToomsUseCase _getToomUseCase;

  ToomNotifierImpl({
    required GetToomsUseCase getToomUseCase,
  }) : _getToomUseCase = getToomUseCase,
  super(ToomState.loading());

  @override
  Future<void> init() async{
    try {
      final tooms = await _getToomUseCase();

      state = ToomState.success(tooms: tooms);

    } catch (e){
      state = ToomState.error(e.toString());
    }
  }
}