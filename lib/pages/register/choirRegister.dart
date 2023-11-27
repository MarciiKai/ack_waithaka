import 'package:flutter/material.dart';

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

class ChoirRegistrationScreen extends StatefulWidget {
  const ChoirRegistrationScreen({Key? key}) : super(key: key);

  @override
  _ChoirRegistrationPageState createState() => _ChoirRegistrationPageState();
}

class _ChoirRegistrationPageState extends State<ChoirRegistrationScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  void _register() {
    String email = _emailController.text;
    String phone = _phoneController.text;

    // Perform registration logic here
  }

  Widget _buildConcaveBackground() {
    return ClipPath(
      clipper: ConcaveBackgroundClipper(),
      child: Container(
        height: 550,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 214, 165, 156), Color.fromARGB(255, 235, 208, 149)],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, TextInputType inputType) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choir Department Registration'),
      ),
      body: Stack(
        children: [
          _buildConcaveBackground(),
          Center(
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildTextField('Email', _emailController, TextInputType.emailAddress),
                    const SizedBox(height: 16),
                    _buildTextField('Phone', _phoneController, TextInputType.phone),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: _register,
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromRGBO(241, 203, 105, 1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                        fixedSize: Size(100, 50),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      
                      child: const Text('Registration Request'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
