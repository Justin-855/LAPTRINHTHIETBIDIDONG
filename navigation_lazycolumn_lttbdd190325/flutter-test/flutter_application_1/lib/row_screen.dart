import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row Layout")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Item 1", style: TextStyle(fontSize: 18)),
            SizedBox(width: 20),
            Text("Item 2", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
