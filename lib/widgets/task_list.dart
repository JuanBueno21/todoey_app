import 'package:flutter/cupertino.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile()
      ],
    );
  }
}