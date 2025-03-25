import 'package:dio/dio.dart';
import '../models/todo.dart';

class TodoService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));

  Future<List<Todo>> fetchTodos() async {
    try {
      Response response = await _dio.get('/todos');
      List<Todo> todos = (response.data as List).map((item) => Todo.fromJson(item)).toList();
      return todos;
    } catch (e) {
      throw Exception('Failed to load todos');
    }
  }
}
