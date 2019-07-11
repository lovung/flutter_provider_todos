import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todos/models/tasks.dart';
import 'package:todos/widgets/tasks.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TaskModel taskModel;

  @override
  void initState() {
    Map<String, dynamic> json = jsonDecode("""{ \
        "id": 5, \
        "name": "Walk fluffy",
        "done": true,
        "description": "",
        "start": 1562700000,
        "tags": [
            {
                "id": 1,
                "name": "personal",
                "color": "0xFFFF00FF"
            },
            {
                "id": 2,
                "name": "easy",
                "color": "0xFFFF0A23"
            }
        ]
    }""");
    taskModel = new TaskModel.fromJson(json);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        TaskWidget(taskModel),
      ]),
    );
  }
}
