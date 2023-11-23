import 'package:flutter/material.dart';
import 'package:ack_waithaka/main.dart';


// ignore: use_key_in_widget_constructors
class VicarsDeskPage extends StatelessWidget {
  final List<MyGridItem> gridItems = [
    MyGridItem(
      label: 'Monday',
      icon: Icons.alarm_add_outlined,
      imageUrl: 'https://picsum.photos/id/1015/100/200',
    ),
    MyGridItem(
      label: 'Tuesday',
      icon: Icons.alarm_add_outlined,
      imageUrl: 'https://picsum.photos/id/1016/200/300',
    ),
    MyGridItem(
      label: 'Wednesday',
      icon: Icons.alarm_add_outlined,
      imageUrl: 'https://picsum.photos/id/1018/200/300',
    ),
    MyGridItem(
      label: 'Thursday',
      icon: Icons.alarm_add_outlined,
      imageUrl: 'https://picsum.photos/id/1020/200/300',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vicars Desk'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: gridItems.length,
        itemBuilder: (BuildContext context, int index) {
          return GridItemCard(gridItems[index]);
        },
      ),
    );
  }
}

class MyGridItem {
  final String label;
  final IconData icon;
  final String imageUrl;

  MyGridItem({
    required this.label,
    required this.icon,
    required this.imageUrl,
  });
}

class GridItemCard extends StatelessWidget {
  final MyGridItem item;

  const GridItemCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(item.icon, size: 50, color: customColor),
          const SizedBox(height: 10),
          Text(
            item.label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Image.network(
            item.imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
