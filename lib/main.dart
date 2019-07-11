import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todos/notifiers/tasks.dart';
import 'package:todos/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(
          value: TaskNotifier,
        ),
        ChangeNotifierProvider(
          builder: (context) => TaskNotifier(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

// List<SingleChildCloneableWidget> providers = ;
