import 'package:flutter/material.dart';
import 'intro.dart'; // Import the new SplashScreen
import 'ready.dart'; // Import ReadyScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bai tap"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildNavigationButton(context, "Bài 1", ReadyScreen()),
            const SizedBox(height: 16),
            buildNavigationButton(context, "Bài 2", IntroScreen()),
          ],
        ),
      ),
    );
  }

  // Function to create navigation buttons
  Widget buildNavigationButton(BuildContext context, String title, Widget screen) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
