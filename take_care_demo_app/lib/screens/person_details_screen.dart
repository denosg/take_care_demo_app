import 'package:flutter/material.dart';
import 'package:take_care_demo_app/data/false_data.dart';
import '../widgets/task_item.dart';

class PersonDetailsScreen extends StatelessWidget {
  static const routeName = '/person-details-screen';

  @override
  Widget build(BuildContext context) {
    final int id = ModalRoute.of(context)?.settings.arguments as int;
    final selectedPerson = falseData.firstWhere((person) => person.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedPerson.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Shows the person's profileImage
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.network(
                    selectedPerson.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            //Shows the person's Name
            Text(
              selectedPerson.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            //Shows the persons Description
            const SizedBox(
              height: 7,
            ),
            Card(
              elevation: 5,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      selectedPerson.description,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  //Shows the person's Tasks
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: ListView.builder(
                        itemBuilder: (context, index) => TaskItem(
                            taskDescription: selectedPerson.tasks[index]),
                        itemCount: selectedPerson.tasks.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
