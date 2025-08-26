import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/features/toom/domain/entity/toom_entity.dart';

final class ToomState implements GenericStateBase{
  final List<ToomEntity> tooms;
  
  @override
  final String stateError;

  @override
  final bool isStateLoading;
  
  const ToomState({
    this.tooms = const [],
    this.stateError = '',
    this.isStateLoading = false,
  });

  const ToomState.error(String message) : this(stateError: message);

  const ToomState.loading() : this(isStateLoading: true);

  const ToomState.success({List<ToomEntity> tooms = const []}) : this(tooms: tooms);

  ToomState copyWith ({
    List<ToomEntity>? tooms,
    String? stateError,
    bool? isStateLoading,
  }) {
    return ToomState(
      tooms: tooms ?? this.tooms,
      stateError: stateError ?? this.stateError,
      isStateLoading: isStateLoading ?? this.isStateLoading,
    );
  }
}