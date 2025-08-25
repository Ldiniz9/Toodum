import 'package:toodum/source/shared/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

final class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
    required this.appBarTitle,
    required this.error,
  });

  final String appBarTitle;
  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: appBarTitle),
      body: Center(child: Text(error)),
    );
  }
}
