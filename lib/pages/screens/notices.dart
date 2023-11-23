import 'package:ack_waithaka/main.dart';
import 'package:flutter/material.dart';
import 'package:ack_waithaka/pages/notifications/departmentsNotification.dart';
import 'package:ack_waithaka/pages/notifications/eventsNotifications.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<NotificationItem> departmentNotifications = [];
  List<NotificationItem> upcomingEventsNotifications = [];

  void postDepartmentNotification(String department, String event) {
    setState(() {
      departmentNotifications.add(NotificationItem(department: department, event: event));
    });
  }

  void postEventNotification(String department, String event) {
    setState(() {
      upcomingEventsNotifications.add(NotificationItem(department: department, event: event));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Page'),
      ),
      backgroundColor: Color.fromARGB(255, 226, 158, 238),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNotificationCard(
              title: 'Department Notifications',
              icon: Icons.group,
              description: 'Receive updates from various departments.',
              notifications: departmentNotifications,
              onTap: () {
                // Example: Navigating to DepartmentDetailsPage
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DepartmentDetailsPage()));
              },
              height: 200,
              padding: EdgeInsets.all(20),
            ),
            _buildNotificationCard(
              title: 'Upcoming Events Notifications',
              icon: Icons.event,
              description: 'Stay informed about upcoming events and activities.',
              notifications: upcomingEventsNotifications,
              onTap: () {
                // Example: Navigating to EventDetailsPage
                Navigator.push(context, MaterialPageRoute(builder: (context) => const EventDetailsPage()));
              },
              height: 200,
              padding: const EdgeInsets.all(20),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationCard({
    required String title,
    required IconData icon,
    required String description,
    required List<NotificationItem> notifications,
    required void Function() onTap,
    required double height,
    required EdgeInsets padding,
  }) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.white,
      child: InkWell(
        onTap: onTap, // Use InkWell for tap effect
        child: Container(
          height: height,
          padding: padding,
          child: Center(
            child: ListTile(
              leading: Icon(
                icon,
                size: 40,
                color: customColor,
              ),
              title: Text(
                title,
                style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                description,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NotificationItem {
  final String department;
  final String event;

  NotificationItem({required this.department, required this.event});
}


