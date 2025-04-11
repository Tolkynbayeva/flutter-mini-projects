import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/pages/tasks_page.dart';
import 'package:todoey_flutter/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksPage(),
      ),
    );
  }
}



