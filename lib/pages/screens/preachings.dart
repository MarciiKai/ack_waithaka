import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class PreachingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preachings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PreachingCard(
              Preaching(
                title: 'The Power of Faith',
                date: 'November 1, 2023',
                imageUrl: 'https://picsum.photos/id/1035/400/200',
              ),
            ),
            PreachingCard(
              Preaching(
                title: 'Hope in Times of Trouble',
                date: 'November 8, 2023',
                imageUrl: 'https://picsum.photos/id/1040/400/200',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreachingCard extends StatelessWidget {
  final Preaching preaching;

  const PreachingCard(this.preaching, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            preaching.imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  preaching.title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Date: ${preaching.date}',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Preaching {
  final String title;
  final String date;
  final String imageUrl;

  Preaching({
    required this.title,
    required this.date,
    required this.imageUrl,
  });
}
