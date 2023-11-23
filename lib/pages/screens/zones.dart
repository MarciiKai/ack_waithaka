import 'package:flutter/material.dart';
import 'package:ack_waithaka/pages/screens/main.dart';

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
          DepartmentCard('WAITHAKA'),
          DepartmentCard('NDWARU'),
          DepartmentCard('MITHONGWE'),
          DepartmentCard('MUTHAMA'),
          DepartmentCard('MUKARARA'),
          DepartmentCard('ENGLISH'),
        ],
      ),
    );
  }
}

class DepartmentCard extends StatelessWidget {
  final String title;

  // ignore: use_key_in_widget_constructors
  const DepartmentCard(this.title);

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
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(241, 203, 105, 1.0)),
            ),
          ],
        ),
      ),
    );
  }
}