import 'package:ack_waithaka/pages/register/childRegister.dart';
import 'package:flutter/material.dart';
import 'package:ack_waithaka/pages/screens/main.dart';

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
        children: [
          DepartmentCard('CHILD', Icons.child_care_sharp, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ChildRegistrationScreen()));
          }),
          DepartmentCard('MOTHERS', Icons.woman_2_outlined, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MothersDepartmentDetailsPage()));
          }),
          DepartmentCard('KAMA', Icons.book, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const KamaDepartmentDetailsPage()));
          }),
          DepartmentCard('CHOIR', Icons.music_video_outlined, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ChoirDepartmentDetailsPage()));
          }),
          DepartmentCard('PRAISE & WORSHIP', Icons.music_note, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PraiseWorshipDepartmentDetailsPage()));
          }),
        ],
      ),
    );
  }
}

class DepartmentCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  // Add a callback function to handle the tap event
  // Constructor updated to include onTap callback
  const DepartmentCard(this.title, this.icon, this.onTap, {Key? key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onTap, // Use the provided onTap callback
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