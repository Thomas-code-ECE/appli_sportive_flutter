import 'package:flutter/material.dart';
import 'Register/Register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application de Running',
      home: RegisterScreen(),
    );
  }
}
