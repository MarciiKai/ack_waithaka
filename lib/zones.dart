import 'package:flutter/material.dart';
import 'package:ack_waithaka/main.dart';


class ZonesScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ZonesScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 165, 156),
      appBar: AppBar(
        title: const Text('Zones'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: const [
          DepartmentCard('Zone 1', Icons.album),
          DepartmentCard('Zone 2', Icons.subject_rounded),
          DepartmentCard('Zone 3', Icons.security_update_good_sharp),
          DepartmentCard('Zone 4', Icons.security_sharp),
          DepartmentCard('Zone 5', Icons.save),
          DepartmentCard('Zone 6', Icons.safety_check),
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
