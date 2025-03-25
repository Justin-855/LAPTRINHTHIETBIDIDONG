import 'package:flutter/material.dart';
import 'intro03.dart'; // Import intro03

class IntroScreen02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              print("Skip pressed");
            },
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/intro_02.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 16),
              const Text(
                'Increase Work Effectiveness',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Time management and the determination of more important tasks will give your job statistics better and always improve',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular button with an arrow icon
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to intro01
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(16),
                backgroundColor: Colors.blue,
              ),
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
            const SizedBox(width: 16),
            // Next button
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroScreen03()),
                  );
                },
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
