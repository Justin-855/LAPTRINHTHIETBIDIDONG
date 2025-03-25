import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Column Layout")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Item 1", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Item 2", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
