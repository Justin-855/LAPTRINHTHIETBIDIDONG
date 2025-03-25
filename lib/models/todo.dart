import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart'; // File này sẽ được tạo tự động bằng build_runner

@JsonSerializable()
class Todo {
  final int id;
  final String title;
  final String description;
  final bool completed;

  Todo({
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
  });

  // Chuyển JSON thành đối tượng Todo
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  // Chuyển đối tượng Todo thành JSON
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
