import 'package:flutter/material.dart';

class ActiveFilter extends StatelessWidget {
  final String name;
  final bool isActive;

  const ActiveFilter({super.key, required this.isActive, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.25,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        color: isActive
            ? Theme.of(context).accentColor
            : Theme.of(context).primaryColor,
        child: Center(
            child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
