import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Make sure this file is named correctly

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 🛠️ FIX: Added key to the constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnarRakshak',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF487530)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}