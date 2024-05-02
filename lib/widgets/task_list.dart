import 'package:flutter/cupertino.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (checkBoxState) {
                taskData.updateTask(task);
              }, longPressCallback: () {
                taskData.deleteTask(task);
            },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
