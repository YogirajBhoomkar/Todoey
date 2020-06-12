import 'package:flutter/material.dart';
import 'package:todoey/Widgets/TaskTile.dart';
import 'package:todoey/model/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy ghee'),
    Task(name: 'Buy clothes'),
  ];
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          tasktitle: tasks[index].name,
          isChecked: tasks[index].isDone,
        );
      },
    );
  }
}
