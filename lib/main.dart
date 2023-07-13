import 'package:flutter/material.dart';
import 'package:techtreats_mm/screens/Splash_Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tech Treats by MM',
      home: SplashScreen(),
    );
  }
}
