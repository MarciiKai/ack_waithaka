import 'package:flutter/material.dart';
import 'package:ack_waithaka/main.dart';

class ZonesScreen extends StatelessWidget {
  const ZonesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Zones'),
        elevation: 0,
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
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        color:  Color.fromARGB(255, 214, 165, 156),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    );
  }

  Widget _buildGridView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 100),
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
            physics: NeverScrollableScrollPhysics(),
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
