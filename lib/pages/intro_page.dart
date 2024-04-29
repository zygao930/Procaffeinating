import 'dart:ui';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              // Logo
              Image.asset(
                'lib/image/logo1.png',
                height: 300,
              ),

              SizedBox(height: 48), // Removed const

              Text(
                'But first, coffee.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cursive',
                  color: Colors.brown[900],
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 24), // Removed const

              Text(
                'Procaffeinating: the tendency to not start anything until you\'ve had a coffee.',
                style: TextStyle(
                  //fontWeight: FontWeight.w100,
                  fontFamily: 'Lato',
                  color: Colors.grey[400],
                  fontSize: 14, // Increased font size for better readability
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
