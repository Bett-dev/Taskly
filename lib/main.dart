import 'package:flutter/material.dart';
import 'package:taskly/task_screen.dart';

void main() {
  runApp(const Taskly());
}

class Taskly extends StatelessWidget {
  const Taskly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}
