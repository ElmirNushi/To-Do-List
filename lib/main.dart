import 'package:flutter/material.dart';
import 'allTasksPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: listScreen(),
    );
  }
}

class listScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2FDFF),
      appBar: AppBar(
        backgroundColor: Color(0xFF373F51),
        title: Text('To-Do List',
          style: TextStyle(color: Color(0xFFF2FDFF), fontFamily: 'BebasNeue', fontSize: 26.0,),
        ),
      ),
      drawer: new Drawer(
        child: ListView(children: <Widget>[
          new ListTile(
            title: new Text('All your tasks'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => tasksPage())
              );
            },
          ),
        ],
        ),
      ),
      body: toDoList(),
    );
  }
}


class toDoList extends StatefulWidget {
  @override
  _toDoListState createState() => _toDoListState();
}

class _toDoListState extends State<toDoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => tasksPage()));
      },
      child: Icon(Icons.add),
        backgroundColor: Color(0xFF373F51),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: (){},),
            IconButton(icon: Icon(Icons.event), onPressed: (){},),
          ],
        ),
      ),
    );
  }
}