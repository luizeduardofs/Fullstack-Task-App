import 'package:shared/shared.dart';

class InMemoryTaskRepo implements TaskRepo {
  List<Task> _data = [
    Task(
      id: '1',
      title: 'Read the Bible',
    ),
    Task(
      id: '2',
      title: 'Work on Flutter App',
    ),
    Task(
      id: '3',
      title: 'Sleep in the night',
    ),
  ];

  List<Task> get tasks => _data;

  @override
  Future<void> addTask(Task task) async {
    final newTask = task.copyWith(id: '${_data.length + 1}');
    _data.add(newTask);
  }

  @override
  Future<void> deleteTask(String id) async {
    final taskToDelete = _data.firstWhere((task) => task.id == id);
    _data.remove(taskToDelete);
  }

  @override
  Future<List<Task>> fetchAllTasks() async {
    return tasks;
  }

  @override
  Future<Task> getTaskById(String id) async {
    return _data.firstWhere((task) => task.id == id);
  }

  @override
  Future<void> updateTask(Task task) async {
    _data = [
      for (final t in _data)
        if (t.id == task.id) task else t,
    ];
  }
}
