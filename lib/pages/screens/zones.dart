import 'package:flutter/material.dart';
import 'package:ack_waithaka/main.dart';


class ConcaveBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, size.height)
      ..quadraticBezierTo(size.width / 3, size.height - 60, size.width / 2, size.height - 30)
      ..quadraticBezierTo(2 * size.width / 3, size.height, size.width, size.height - 20)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
class ZonesScreen extends StatelessWidget {
  const ZonesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Zones'),
        backgroundColor: const Color.fromARGB(255, 214, 165, 156),
        elevation: 2,
      ),
      body: Stack(
        children: [
          _buildConcaveBackground(),
          _buildGridView(),
        ],
      ),
    );
  }

  Widget _buildConcaveBackground() {
    return ClipPath(
      clipper: ConcaveBackgroundClipper(),
      child: Container(
        height: 250,
              decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 214, 165, 156),
                    Color.fromARGB(255, 235, 208, 149),
                  ],
                ),             
                   boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildGridView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const SizedBox(height: 100),
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
            children: const [
              ZonesCard('WAITHAKA'),
              ZonesCard('NDWARU'),
              ZonesCard('MITHONGWE'),
              ZonesCard('MUTHAMA'),
              ZonesCard('MUKARARA'),
              ZonesCard('ENGLISH'),
            ],
          ),
        ),
      ],
    );
  }
}

class ZonesCard extends StatelessWidget {
  final String title;

  const ZonesCard(this.title);

  @override
  Widget build(BuildContext context) {
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
      ),
    );
  }
}
