import 'package:ack_waithaka/church_support.dart';
import 'package:ack_waithaka/departments.dart';
import 'package:ack_waithaka/feedback.dart';
import 'package:ack_waithaka/live_video.dart';
import 'package:ack_waithaka/notices.dart';
import 'package:ack_waithaka/preachings.dart';
import 'package:ack_waithaka/register.dart';
import 'package:ack_waithaka/vicars_desk.dart';
import 'package:ack_waithaka/zones.dart';
import 'package:flutter/material.dart';
import 'package:ack_waithaka/main.dart';
// import 'package:icons_plus/icons_plus.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ACK WAITHAKA'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              DashboardGrid(
                
                color: Colors.red.withOpacity(0.2),
                cards: const [
                  DashboardCard(title: 'Church Registration', icon: Icons.app_registration_outlined),
                  DashboardCard(title: 'Feedback', icon: Icons.feedback),
                  DashboardCard(title: 'Departments', icon: Icons.church_rounded),
                  DashboardCard(title: 'Zones', icon: Icons.folder_zip),
                ],
              ),
              const SizedBox(height: 8),
              DashboardGrid(
                color: Colors.purple.withOpacity(0.2),
                cards: const [
                  DashboardCard(title: 'Church Live Video', icon: Icons.book_online),
                  DashboardCard(title: 'Church Audio Stream', icon: Icons.audiotrack),
                  DashboardCard(title: 'Vicars Desk', icon: Icons.border_inner),
                  DashboardCard(title: 'Notices', icon: Icons.notifications),
                ],
              ),
              const SizedBox(height: 2),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PreachingsPage()),
                  );
                },
                child: DashboardButton(
                  title: 'Preachings',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PreachingsPage()),
                    );
                  },
                ),
              ),
              const SizedBox(height: 2),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FinancialSupportPage()),
                  );
                },
                child: DashboardButton(
                  title: 'Financial Support',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FinancialSupportPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardGrid extends StatelessWidget {
  final Color color;
  final List<Widget> cards;

  const DashboardGrid({
    required this.color,
    required this.cards,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent, 
      child: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(-0.8, -0.8),
            stops: const [0.0, 0.5, 0.5, 1],
            colors: [
              Colors.red.withOpacity(0.2),
              Colors.red.withOpacity(0.2),
              Colors.purple.withOpacity(0.2),
              Colors.purple.withOpacity(0.2),

            ],
            tileMode: TileMode.repeated,
          ),
        ),
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          childAspectRatio: 1.5,
          children: cards,
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const DashboardCard({
    required this.title,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
     child: InkWell(
onTap: () {
if (title == 'Feedback') {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => const FeedbackScreen()),
);
}
if (title == 'Zones') {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => const ZonesScreen()),
);
}
if (title == 'Church Registration') {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => const RegistrationScreen()),
);
}
if (title == 'Vicars Desk') {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => VicarsDeskPage()),
);
}
if (title == 'Church Live Video') {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => const VideoPage()),
);
}
if (title == 'Notices') {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => const NotificationPage()),
);
}
if (title == 'Departments') {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => const DepartmentScreen()),
);
}
},
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001) // Add perspective
            ..rotateY(0.01), // Rotate along the Y-axis
          child: Card(
            elevation: 8, // Increased elevation for depth perception
            color: Colors.white, // Replace with your desired color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, size: 30, color: customColor),
                  const SizedBox(height: 3),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class DashboardButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const DashboardButton({
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 70,
      child: InkWell(
        onTap: onTap,
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.01) 
            ..rotateX(0.01),
  
            child: 
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(241, 203, 105, 1.0),
                    ),
                          child: Card(
                  elevation: 5, 
                  color: Colors.red.withOpacity(0.2), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: customColor, 
                      width: 3,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
            ),
        ),
      ),
    );
  }
}


