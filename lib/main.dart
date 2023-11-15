import 'package:flutter/material.dart';
import 'package:ack_waithaka/dashboard.dart';

MaterialColor customColor = const MaterialColor(0xFFF1CB69, {
  50: Color.fromRGBO(241, 203, 105, 0.1),
  100: Color.fromRGBO(241, 203, 105, 0.2),
  200: Color.fromRGBO(241, 203, 105, 0.3),
  300: Color.fromRGBO(241, 203, 105, 0.4),
  400: Color.fromRGBO(241, 203, 105, 0.5),
  500: Color.fromRGBO(241, 203, 105, 0.6),
  600: Color.fromRGBO(241, 203, 105, 0.7),
  700: Color.fromRGBO(241, 203, 105, 0.8),
  800: Color.fromRGBO(241, 203, 105, 0.9),
  900: Color.fromRGBO(241, 203, 105, 1.0),
});

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: customColor
       
       ,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DashboardScreen(), 
    );
  }
}
