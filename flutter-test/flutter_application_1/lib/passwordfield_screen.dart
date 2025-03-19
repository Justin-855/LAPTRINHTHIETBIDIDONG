import 'package:flutter/material.dart';

class PasswordFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Password Input")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Enter password",
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
