import 'package:fitness_app/screens/sign_screen.dart';
import 'package:fitness_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}