import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/features/landing/presentation/providers/landing_notifier_provider.dart';
import 'package:toodum/source/features/toom/domain/entity/toom_entity.dart';
import 'package:toodum/source/features/toom/presentation/app/widgets/toom_widget.dart';
import 'package:toodum/source/shared/widgets/app_error_widget.dart';
import 'package:toodum/source/shared/widgets/app_loading_widget.dart';

final class ToomPage extends ConsumerStatefulWidget {
  const ToomPage({super.key, this.toom});

  final ToomEntity? toom;

  @override
  ConsumerState<ToomPage> createState() => _ToomPageState();
}

final class _ToomPageState extends ConsumerState<ToomPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      //TODO: adicionar a leitura do provider/notifier aqui
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(landingNotifierProvider);

    return ThemeStateBuilder(
      state: state,
      loading: const AppLoadingWidget(appBarTitle: ''),
      error: AppErrorWidget(appBarTitle: '', error: state.stateError),
      success: ToomWidget(),
    );
  }
}
