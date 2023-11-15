import 'package:flutter/material.dart';
import 'package:ack_waithaka/main.dart';


class DepartmentScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const DepartmentScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 205, 156, 214),
      appBar: AppBar(
        title: const Text('Departments'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: const [
          DepartmentCard('Children Ministry', Icons.child_care_sharp),
          DepartmentCard('Mothers Union', Icons.woman_2_outlined),
          DepartmentCard('Bible Study', Icons.library_books),
          DepartmentCard('Youth Ministry', Icons.woman_rounded),
          DepartmentCard('Personnel', Icons.people),
          DepartmentCard('Peace and Justice', Icons.favorite),
        ],
      ),
    );
  }
}

class DepartmentCard extends StatelessWidget {
  final String title;
  final IconData icon;

  // ignore: use_key_in_widget_constructors
  const DepartmentCard(this.title, this.icon, {Key? key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: customColor),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
