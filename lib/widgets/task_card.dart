// lib/widgets/task_card.dart

import 'package:flutter/material.dart';
import 'package:task_manager/utils/constants.dart';
import '../models/task.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final VoidCallback onToggleComplete;
  final VoidCallback onDelete;
  final VoidCallback onTap;

  const TaskCard({
    super.key,
    required this.task,
    required this.onToggleComplete,
    required this.onDelete,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 2,
      child: ListTile(
        onTap: onTap,
        leading: Checkbox(
          value: task.isCompleted,
          onChanged: (value) => onToggleComplete(),
          activeColor: AppColors.primaryColor,
        ),
        title: Text(
          task.title,
          style: TextStyle(
            fontSize: 18,
            decoration: task.isCompleted
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            color: task.isCompleted ? Colors.grey : Colors.black,
          ),
        ),
        subtitle: Text(
          task.description.length > 50
              ? '${task.description.substring(0, 50)}...'
              : task.description,
          style: TextStyle(
            color: task.isCompleted ? Colors.grey : Colors.black54,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: task.priorityColor,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}