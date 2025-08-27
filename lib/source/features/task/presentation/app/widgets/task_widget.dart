import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';
import 'package:toodum/source/features/task/presentation/app/widgets/task_item_widget.dart';
import 'package:toodum/source/shared/shared.dart';

final class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key, required this.tasks});

  final List<TaskEntity> tasks;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isWideScreen = screenWidth >= 800;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: isWideScreen ? null : Drawer(child: AppDrawerWidget()),
      appBar: isWideScreen
          ? null
          : AppBar(
              backgroundColor: Colors.black,
              leading: Builder(
                builder: (context) => IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              title: Center(
                child: Text(
                  'TOODUM',
                  style: ThemeTypography.bold56.apply(
                    color: ThemeColors.secondary,
                  ),
                ),
              ),
              actions: [SizedBox(width: 48)],
            ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int itemCount) =>
                    const Divider(),
                physics: const ClampingScrollPhysics(),
                itemCount: tasks.length,
                itemBuilder: (_, i) {
                  final task = tasks[i];
                  return TaskItemWidget(tasks: tasks, task: task);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
