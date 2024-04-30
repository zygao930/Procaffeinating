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

              SizedBox(height: 48),

              Text(
                'But first, coffee.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cursive',
                  color: Colors.brown[900],
                  fontSize: 30,
                ),
              ),

              SizedBox(height: 24),

              Text(
                'Procaffeinating: the tendency to not start anything until you\'ve had a coffee.',
                style: TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),

              Center(
                child: Container(
                  constraints: BoxConstraints(minWidth: 300),
                  decoration: BoxDecoration(
                    color: Colors.brown[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(18),
                  child: const Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Cursive',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
