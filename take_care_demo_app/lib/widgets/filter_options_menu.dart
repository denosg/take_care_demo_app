import 'package:flutter/material.dart';

class FilterOptionsMenu extends StatelessWidget {
  const FilterOptionsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.3,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: const Icon(Icons.list),
      ),
    );
  }
}
