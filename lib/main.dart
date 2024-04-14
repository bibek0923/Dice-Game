import 'package:flutter/material.dart';
import 'package:roll_dice/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home:  MainScreen(),
    );
  }
}
