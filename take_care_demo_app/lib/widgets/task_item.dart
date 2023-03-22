import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TaskItem extends StatelessWidget {
  final String taskDescription;

  const TaskItem({super.key, required this.taskDescription});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (value) {}),
          Expanded(
            child: Text(
              taskDescription,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
