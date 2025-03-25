import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextField Input")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: "Enter text",
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
