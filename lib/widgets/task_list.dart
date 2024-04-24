import 'package:flutter/cupertino.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:todoey_app/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy bread"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (checkBoxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },

        );
      },
      itemCount: tasks.length,
    );
  }
}
