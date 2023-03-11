import 'package:flutter/material.dart';
import 'package:take_care_demo_app/data/false_data.dart';
import 'package:take_care_demo_app/models/person.dart';
import 'package:take_care_demo_app/widgets/person_item.dart';

class HomeScreen extends StatelessWidget {
  final List<Person> falsePersonList = falseData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView.builder(
          itemBuilder: ((context, index) {
            var id = falsePersonList[index].id;
            var name = falsePersonList[index].name;
            var age = falsePersonList[index].age;
            var description = falsePersonList[index].description;
            var imageUrl = falsePersonList[index].imageUrl;
            return PersonItem(
                id: id,
                name: name,
                age: age,
                imageUrl: imageUrl,
                description: description);
          }),
          itemCount: falsePersonList.length,
        ),
      ),
    );
  }
}
