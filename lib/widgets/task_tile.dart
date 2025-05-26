import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final VoidCallback? onToggle;

  const TaskTile({
    super.key,
    required this.task,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      trailing: Checkbox(
        value: task.completed,
        onChanged: (_) => onToggle?.call(),
      ),
    );
  }
}
