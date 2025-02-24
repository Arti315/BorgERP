import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();

    // Setting up the animation
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Duration of animation
    );

    animation = CurvedAnimation(
      parent: controller,
      curve:
          Curves
              .easeIn, // You can change this curve for different animation effects
    );

    controller.forward(); // Start the animation

    // Simulate a delay before moving to the next screen (e.g., after logo shows)
    Timer(Duration(seconds: 3), () {
      // You can add a call to the provider or logic before navigating to the next screen
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color of splash screen
      body: Center(
        child: FadeTransition(
          opacity: animation, // This animates the logo's opacity
          child: Image.asset(
            'assets/logo.png', // Replace with your logo path
            width: 150, // Customize the size
            height: 150, // Customize the size
          ),
        ),
      ),
    );
  }
}
