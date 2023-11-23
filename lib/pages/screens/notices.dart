// notices.dart

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
      body: Column(
        children: [
          _buildNotificationCard(
            title: 'Department Notifications',
            notifications: departmentNotifications,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DepartmentDetailsPage()));
            },
            height: 200,
            padding: EdgeInsets.all(20),
          ),
          _buildNotificationCard(
            title: 'Upcoming Events Notifications',
            notifications: upcomingEventsNotifications,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetailsPage()));
            },
            height: 200,
            padding: EdgeInsets.all(20),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationCard({
    required String title,
    required List<NotificationItem> notifications,
    required void Function() onTap,
    required double height,
    required EdgeInsets padding,
  }) {
    return Card(
      elevation: 5.0, // Add elevation for a slight shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Add rounded corners
      ),
      color: Colors.white,
      child: Container(
        height: height,
        padding: padding,
        child: Center(
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(color: customColor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onTap: onTap,
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
