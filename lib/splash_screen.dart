import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';

class splash_Screen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(title: 'BMI Calculator'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red.shade100, Colors.pink.shade50],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Left side shapes
          Positioned(
            top: 100,
            left: -30,
            child: Transform.rotate(
              angle: 0.5,
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: -20,
            child: Transform.rotate(
              angle: -0.5,
              child: Container(
                height: 120,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          // Right side shapes
          Positioned(
            top: 220,
            right: -30,
            child: Transform.rotate(
              angle: -0.5,
              child: Container(
                height: 90,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            right: -20,
            child: Transform.rotate(
              angle: 0.7,
              child: Container(
                height: 110,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
          ),

          // Center logo + text
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("assets/images/logo3.png")),
                const SizedBox(height: 20),
                Text(
                  "BMI Calculator",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
