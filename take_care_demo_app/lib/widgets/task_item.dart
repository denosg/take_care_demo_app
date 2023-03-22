import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TaskItem extends StatelessWidget {
  final String taskDescription;

  const TaskItem({required this.taskDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(value: false, onChanged: ((value) {})),
            const SizedBox(
              width: 3,
            ),
            Expanded(
              child: Text(
                taskDescription,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
