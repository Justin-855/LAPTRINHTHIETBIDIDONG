import 'package:flutter/material.dart';
import 'intro01.dart'; 

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => IntroScreen01()),
        );
      },
      child: Scaffold(
        body: Center(
          child: ImageTextWidget(),
        ),
      ),
    );
  }
}

class ImageTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/start.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 8),
          const Text(
            'UTH SMARTTASKS',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
