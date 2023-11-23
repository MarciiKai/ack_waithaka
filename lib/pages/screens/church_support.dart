import 'package:flutter/material.dart';
import 'package:ack_waithaka/pages/screens/main.dart';

class FinancialSupportPage extends StatefulWidget {
  const FinancialSupportPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FinancialSupportPageState createState() => _FinancialSupportPageState();
}

class _FinancialSupportPageState extends State<FinancialSupportPage> {
  String? _selectedCard;

  void _navigateToDonationForm() {
    if (_selectedCard != null) {
      // ignore: avoid_print
      print('Navigating to donation form for card: $_selectedCard');
    }
  }

  Widget build3DCard(String title, String description, IconData icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCard = title;
        });

        _navigateToDonationForm();
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, size: 40.0, color: customColor),
                 const SizedBox(height: 16.0),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  Text(description),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text('Financial Support Page'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          build3DCard('Thanks Giving', 'Make a donation for Thanksgiving', Icons.thumb_up),
          build3DCard('Tithes', 'Contribute 10% of your income', Icons.monetization_on),
          build3DCard('Offering', 'Give a voluntary offering', Icons.card_giftcard),
        ],
      ),
    );
  }
}

