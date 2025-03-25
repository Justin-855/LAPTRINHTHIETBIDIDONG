import 'package:flutter/material.dart';
import '../models/todo.dart';
import '../service/todo_service.dart';
import '../services/todo_service.dart';

class TodoViewModel extends ChangeNotifier {
  final TodoService _todoService = TodoService();
  List<Todo> _todos = [];
  bool _isLoading = false;

  List<Todo> get todos => _todos;
  bool get isLoading => _isLoading;

  Future<void> fetchTodos() async {
    _isLoading = true;
    notifyListeners();

    try {
      _todos = await _todoService.fetchTodos();
    } catch (e) {
      _todos = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
