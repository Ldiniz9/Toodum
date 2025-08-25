import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toodum/source/features/landing/presentation/notifiers/landing_notifier.dart';
import 'package:toodum/source/features/landing/presentation/states/landing_state.dart';

final class LandingNotifierImpl extends StateNotifier<LandingState>
    implements LandingNotifier {

  LandingNotifierImpl()
    : super(const LandingState.success());
}
