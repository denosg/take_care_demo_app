import 'package:flutter/material.dart';
import 'package:take_care_demo_app/data/false_data.dart';
import 'package:take_care_demo_app/models/filter_options.dart';
import 'package:take_care_demo_app/models/person.dart';
import 'package:take_care_demo_app/widgets/person_item.dart';

import '../widgets/filter_options_menu.dart';
import '../widgets/active_filter.dart';

class HomeScreen extends StatelessWidget {
  final List<Person> falsePersonList = falseData;
  final List<FilterOptions> filterOptions = filters;

  @override
  Widget build(BuildContext context) {
    var appBarHeight = AppBar().preferredSize.height;
    double bottomNavBarHeight =
        MediaQuery.of(context).padding.bottom + kBottomNavigationBarHeight;
    return Column(
      children: [
        Row(
          children: [
            const FilterOptionsMenu(),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => ActiveFilter(
                      name: filterOptions[index].name,
                      isActive: true,
                    )),
                itemCount: filterOptions.length,
              ),
            ),
          ],
        ),
        Container(
          height: (MediaQuery.of(context).size.height -
                  appBarHeight -
                  bottomNavBarHeight) *
              0.86,
          width: double.infinity,
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
      ],
    );
  }
}
