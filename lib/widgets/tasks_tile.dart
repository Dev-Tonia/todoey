import 'dart:ffi';

import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool?)? checkboxCallback;
  final Function() longPressed;

  TasksTile(
      {required this.isChecked,
      required this.taskTile,
      required this.checkboxCallback,
      required this.longPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressed,
      title: Text(
        taskTile,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}
