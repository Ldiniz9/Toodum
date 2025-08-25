import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toodum/source/features/landing/presentation/notifiers/landing_notifier_impl.dart';
import 'package:toodum/source/features/landing/presentation/states/landing_state.dart';

final landingNotifierProvider =
    StateNotifierProvider<LandingNotifierImpl, LandingState>((ref) {

      return LandingNotifierImpl();
    });
