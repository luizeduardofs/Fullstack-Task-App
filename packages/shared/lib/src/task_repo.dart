import '../shared.dart';

abstract interface class TaskRepo {
  Future<List<Task>> fetchAllTasks();
  Future<Task> getTaskById(String id);
  Future<void> addTask(Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(String id);
}
