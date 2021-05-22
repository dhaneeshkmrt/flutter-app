import 'package:flutter/material.dart';
import 'package:notes_app/screens/dashboard.dart';
import 'package:notes_app/utils/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello',
      home: Dashboard(title: 'Notes App'),
    );
  }
}
