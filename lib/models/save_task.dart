import 'package:flutter/material.dart';
import 'package:todo_app_provider/models/task_model.dart';


class SaveTask extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'Learn Flutter', isCompleted: true),
    Task(title: 'Drink Water', isCompleted: false),
    Task(title: 'Play Football', isCompleted: true),
    Task(title: 'Add More Todos', isCompleted: false),
  ];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  void checkTask(int index) {
    tasks[index].isDone();
    notifyListeners();
  }
}
