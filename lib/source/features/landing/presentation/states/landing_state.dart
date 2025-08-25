import 'package:toodum/source/core/theme/theme.dart';

final class LandingState implements GenericStateBase {
  @override
  final String stateError;

  @override
  final bool isStateLoading;

  const LandingState({this.stateError = '', this.isStateLoading = false});

  const LandingState.loading() : this(isStateLoading: true);

  const LandingState.success() : this();

  const LandingState.error(String message) : this(stateError: message);
}
