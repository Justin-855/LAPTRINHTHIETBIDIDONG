import 'package:flutter/material.dart';
import 'views/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),  // Mở màn hình TodoScreen khi chạy ứng dụng
    );
  }
}

