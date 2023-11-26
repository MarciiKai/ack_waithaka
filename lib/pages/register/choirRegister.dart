import 'package:flutter/material.dart';

class ChoirRegistrationScreen extends StatefulWidget {
  const ChoirRegistrationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChoirRegistrationPageState createState() => _ChoirRegistrationPageState();
}

class _ChoirRegistrationPageState extends State<ChoirRegistrationScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();


  void _register() {
    String email = _emailController.text;
    String phone = _phoneController.text;

 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choir Department Registration'),
      ),
      body: Card(
        elevation: 4,
     child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
              ),
            ),
          
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _register,
              child: const Text('Registration Request'),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
