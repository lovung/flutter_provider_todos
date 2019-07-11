import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todos/models/tasks.dart';

class TaskNotifier with ChangeNotifier {
  List<TaskModel> _tasks = [];
  List<TaskModel> get tasks => _tasks;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<List<TaskModel>> toggleState(int tasksId) async {
    List<TaskModel> list = new List<TaskModel>();
    return list;
  }
}
