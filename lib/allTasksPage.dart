import 'package:flutter/material.dart';

class tasksPage extends StatefulWidget {
  @override
  _tasksPageState createState() => _tasksPageState();
}

class _tasksPageState extends State<tasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('All your tasks'),
      ),
    );
  }
}
