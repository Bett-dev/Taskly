import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  const TaskTile({super.key, required this.taskTitle, this.isChecked = false});
  final String taskTitle;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {},
      ),
    );
  }
}
