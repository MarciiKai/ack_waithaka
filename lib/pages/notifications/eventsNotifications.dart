// ignore: file_names
import 'package:flutter/material.dart';

class EventDetailsPage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const EventDetailsPage({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _EventDetailsPageState createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  List<String> notifications = [];

  void postNotification(String notification) {
    setState(() {
      notifications.add(notification);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Events Notifications'),
      ),
      body: ListView.builder(
        itemCount: 5, 
        itemBuilder: (BuildContext context, int index) {
          return NotificationCard(
            height:500,
            key: ValueKey(index),
            index: index,
            notification: notifications.length > index ? notifications[index] : '',
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postNotification('New Notification');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final int index;
  final String notification;

  // ignore: use_key_in_widget_constructors
  const NotificationCard({ Key? key, required this.index, required this.notification, required int height});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.orange,
      Colors.red,
      Colors.yellow,
      Colors.deepPurple,
    ];

    return Card(
      color: colors[index % colors.length],
      child: ListTile(
        title: Text('Card $index'),
        subtitle: Text(notification), 
      ),
    );
  }
  
}