import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/features/task/domain/entity/task_entity.dart';
import 'package:toodum/source/features/task/presentation/app/widgets/task_create_widget.dart';
import 'package:toodum/source/features/task/presentation/app/widgets/task_item_widget.dart';
import 'package:toodum/source/features/task/presentation/controllers/task_form_controllers.dart';
import 'package:toodum/source/shared/shared.dart';

final class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key, required this.tasks, required this.taskControllers, required this.onCreatePressed,});

  final List<TaskEntity> tasks;
  final TaskFormControllers taskControllers;
  final VoidCallback onCreatePressed;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isWideScreen = screenWidth >= 800;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: AppNavigationWidget(),
      endDrawer: isWideScreen ? null : Drawer(width: 200, child: AppEndDrawerWidget()),
      appBar: isWideScreen
          ? null
          : AppBar(
              leading: Spacer(),
              backgroundColor: Colors.black,
              title: Center(
                child: Text(
                  'TOODUM',
                  style: ThemeTypography.bold56.apply(
                    color: ThemeColors.secondary,
                  ),
                ),
              ),
              actions: [
                Builder(
                  builder: (context) => IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.settings),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                  ),
                ),
              ],
            ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TaskCreateWidget(taskControllers: taskControllers, onCreatePressed: onCreatePressed),
            const SizedBox(height: 24,),
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
