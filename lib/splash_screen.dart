import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // Make sure this import path is correct

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key}); // Added key to constructor

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          // 🛠️ FIX: Changed HomeScreen to MyHomePage to match your class name
          builder: (context) => const MyHomePage(title: 'AnarRakshak'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Your existing splash screen UI code goes here.
    // I've included it based on our previous conversations.
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF487530),
              Color(0xFF39794F),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/logo.png', height: 120),
              const SizedBox(height: 20),
              const Text(
                'AnarRakshak',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF74C365),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Your Pomegranate Farm Guard',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 40),
              const SizedBox(
                width: 120,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white24,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF74C365)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}