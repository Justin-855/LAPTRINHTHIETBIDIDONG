import 'package:flutter/material.dart';
import '../viewmodels/todo_viewmodel.dart';

class TodoScreen extends StatelessWidget {
  final TodoViewModel viewModel = TodoViewModel();

  TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo List")),
      body: FutureBuilder(
        future: viewModel.fetchTodos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data == null || (snapshot.data! as List).isEmpty) {
            return const Center(child: Text("No todos available."));
          }

          final todos = snapshot.data!;
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return Card(
                child: ListTile(
                  title: Text(todo.title),
                  subtitle: Text("Completed: ${todo.completed}"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
