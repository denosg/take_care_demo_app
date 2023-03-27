import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TaskItem extends StatefulWidget {
  final String taskDescription;

  const TaskItem({required this.taskDescription});

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? isActive = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
                value: isActive,
                onChanged: ((value) {
                  setState(() {
                    isActive = value;
                  });
                })),
            const SizedBox(
              width: 3,
            ),
            Expanded(
              child: Text(
                widget.taskDescription,
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
