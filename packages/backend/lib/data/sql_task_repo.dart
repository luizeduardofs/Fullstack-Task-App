import 'package:shared/shared.dart';

class SqlTaskRepo implements TaskRepo {
  @override
  Future<void> addTask(Task task) async {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTask(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<List<Task>> fetchAllTasks() async {
    throw UnimplementedError();
  }

  @override
  Future<Task> getTaskById(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<void> updateTask(Task task) async {
    throw UnimplementedError();
  }
}
