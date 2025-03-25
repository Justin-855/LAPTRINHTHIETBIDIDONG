import 'package:flutter/material.dart';
import 'ready.dart'; // Import ReadyScreen

class IntroScreen03 extends StatelessWidget {
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
                'assets/images/intro_03.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 16),
              const Text(
                'Reminder Notification',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'The advantage of this application is that it also provides reminders for you so you dont forget to keep doing your assignments well and according to the time you have set',
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
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to Intro02
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(16),
                backgroundColor: Colors.blue,
              ),
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextButton(
                onPressed: () {
                 
                },
                child: const Text(
                  'Get Started',
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
