import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile(
      {super.key,
      required this.taskTitle,
      this.isChecked = false,
      required this.toggleCheckbox});
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) toggleCheckbox;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskTitle,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          decoration: widget.isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlue,
        value: widget.isChecked,
        onChanged: (newValue) {
          widget.toggleCheckbox(newValue);
          print('Checkbox clicked, new value: $newValue');
        },
      ),
    );
  }
}
