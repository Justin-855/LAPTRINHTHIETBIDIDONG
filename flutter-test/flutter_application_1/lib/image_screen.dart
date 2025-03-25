import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Display an image")),
      body: Center(
        child: Image.asset("assets/images/intro_01.png", width: 200, height: 200), 
      ),
    );
  }
}
