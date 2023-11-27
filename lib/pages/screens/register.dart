import 'package:flutter/material.dart';

class ConcaveBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, size.height)
      ..quadraticBezierTo(size.width / 3, size.height - 40, size.width / 2, size.height - 20)
      ..quadraticBezierTo(2 * size.width / 3, size.height, size.width, size.height - 30)
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

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String _gender = 'Male';
  String _isAnglican = 'Yes';

  void _register() {
    String name = _nameController.text;
    String email = _emailController.text;
    String phone = _phoneController.text;

    // Perform registration logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Church Registration'),
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ConcaveBackgroundClipper(),
            child: Container(
              height: 150,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 214, 165, 156),
                    Color.fromARGB(255, 235, 208, 149),
                  ],
                ),
              ),
            ),
          ),
        Padding(padding: EdgeInsets.only(top: 150),
      child: Center(
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding:  EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: _nameController,
                      decoration:  InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration:  InputDecoration(
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Gender:'),
                        Row(
                          children: [
                            Radio(
                              value: 'Male',
                              groupValue: _gender,
                              onChanged: (value) {
                                setState(() {
                                  _gender = value.toString();
                                });
                              },
                            ),
                            const Text('Male'),
                            Radio(
                              value: 'Female',
                              groupValue: _gender,
                              onChanged: (value) {
                                setState(() {
                                  _gender = value.toString();
                                });
                              },
                            ),
                            const Text('Female'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Are you Anglican?'),
                        Row(
                          children: [
                            Radio(
                              value: 'Yes',
                              groupValue: _isAnglican,
                              onChanged: (value) {
                                setState(() {
                                  _isAnglican = value.toString();
                                });
                              },
                            ),
                            const Text('Yes'),
                            Radio(
                              value: 'No',
                              groupValue: _isAnglican,
                              onChanged: (value) {
                                setState(() {
                                  _isAnglican = value.toString();
                                });
                              },
                            ),
                            const Text('No'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: _register,
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromRGBO(241, 203, 105, 1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                        fixedSize: Size(200, 50),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      
                      child: const Text('Register'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
