import 'package:flutter/material.dart';
import 'package:take_care_demo_app/data/false_data.dart';
import 'package:take_care_demo_app/screens/person_details_screen.dart';

class PersonItem extends StatelessWidget {
  final int id;
  final String name;
  final int age;
  final String imageUrl;
  final String description;

  const PersonItem(
      {required this.id,
      required this.name,
      required this.age,
      required this.imageUrl,
      required this.description});

  //opens pressedPersonDetails
  void _showPersonDetails(int id, BuildContext ctx) {
    Navigator.of(ctx).pushNamed(PersonDetailsScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showPersonDetails(id, context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: id == falseData.length
            ? const EdgeInsets.all(15)
            : const EdgeInsets.only(
                right: 15,
                left: 15,
                top: 15,
              ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: Image.network(
                imageUrl,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "$name , $age",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 200,
                  height: 150,
                  padding: const EdgeInsets.only(right: 12, bottom: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Center(
                        child: Expanded(
                          child: Text(
                            description,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
