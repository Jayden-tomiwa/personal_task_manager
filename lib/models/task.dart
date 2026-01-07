import 'package:flutter/material.dart';
class Task {
  String id;
  String title;
  String description;
  String priority; // 'low', 'medium', 'high'
  bool isCompleted;
  DateTime createdAt;

  Task({
    required this.title,
    required this.description,
    required this.priority,
    this.isCompleted = false,
    DateTime? createdAt,
    String? id,
  })  : id = id ?? DateTime.now().millisecondsSinceEpoch.toString(),
        createdAt = createdAt ?? DateTime.now();

  // Helper method to get priority color
  Color get priorityColor {
    switch (priority) {
      case 'high':
        return Colors.red;
      case 'medium':
        return Colors.orange;
      case 'low':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}