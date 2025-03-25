import 'package:flutter/material.dart';
import 'text_detail_screen.dart';
import 'image_screen.dart';
import 'textfield_screen.dart';
import 'passwordfield_screen.dart';
import 'column_screen.dart';
import 'row_screen.dart';

class UIComponentsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "UI Components List",
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Display", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            buildCustomButton(context, "Text", "Display text", TextDetailScreen()),
            buildCustomButton(context, "Image", "Display an image", ImageScreen()),

            const SizedBox(height: 16),
            const Text("Input", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            buildCustomButton(context, "TextField", "Input field for text", TextFieldScreen()),
            buildCustomButton(context, "PasswordField", "Input field for passwords", PasswordFieldScreen()),

            const SizedBox(height: 16),
            const Text("Layout", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            buildCustomButton(context, "Column", "Arranges elements vertically", ColumnScreen()),
            buildCustomButton(context, "Row", "Arranges elements horizontally", RowScreen()),
          ],
        ),
      ),
    );
  }

  Widget buildCustomButton(BuildContext context, String title, String subtitle, Widget screen) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          backgroundColor: const Color(0x4D2196F3),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          alignment: Alignment.centerLeft,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16)),
            const SizedBox(height: 4),
            Text(subtitle, style: const TextStyle(color: Colors.black, fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
