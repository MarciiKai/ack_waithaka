import 'package:flutter/material.dart';
import 'package:ack_waithaka/main.dart';
import 'package:ack_waithaka/pages/register/childRegister.dart';
import 'package:ack_waithaka/pages/register/choirRegister.dart';
import 'package:ack_waithaka/pages/register/kamaRegister.dart';
import 'package:ack_waithaka/pages/register/mothersRegister.dart';
import 'package:ack_waithaka/pages/register/praiseRegister.dart';

class DepartmentScreen extends StatelessWidget {
  const DepartmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Departments'),
        backgroundColor: const Color.fromARGB(255, 205, 156, 214),
        elevation: 0,
      ),
      body: Stack(
        children: [
          _buildConcaveBackground(),
          _buildGridView(context),
        ],
      ),
    );
  }

  Widget _buildConcaveBackground() {
    return Container(
      height: 150,
      decoration: const BoxDecoration(
        color:  Color.fromARGB(255, 205, 156, 214),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    );
  }

  Widget _buildGridView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const SizedBox(height: 100), // Adjust the height based on your needs
        Container(
          decoration: const BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _build3DCard('CHILDREN MINISTRY', Icons.child_care_sharp, () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChildRegistrationScreen()));
              }),
              _build3DCard('MOTHERS UNION', Icons.woman_2_outlined, () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MothersRegistrationScreen()));
              }),
              _build3DCard('KAMA', Icons.book, () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const KamaRegistrationScreen()));
              }),
              _build3DCard('CHOIR', Icons.music_video_outlined, () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChoirRegistrationScreen()));
              }),
              _build3DCard('PRAISE & WORSHIP', Icons.music_note, () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PraiseRegistrationScreen()));
              }),
            ],
          ),
        ),
      ],
    );
  }

  Widget _build3DCard(String title, IconData icon, VoidCallback onTap) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.002)
        ..rotateX(0.02),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 50, color: customColor),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
