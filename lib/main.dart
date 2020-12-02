import 'package:flutter/material.dart';
import 'package:to_dolist/calendar.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/sideMenuPages/tomorrowPage.dart';
import 'sideMenuPages/allTasksPage.dart';

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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
          new DrawerHeader(child: Text('Home Page', style: TextStyle(
            fontFamily: 'BebasNeue',
            fontSize: 35.0,
          color: Colors.white),),
            decoration: BoxDecoration(
              color: Color(0xFF373F51),
              ),
            ),
          new ListTile(
            leading: Icon(Icons.event),
            title: new Text('Tomorrow Tasks'),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => pageTomorrow())
              );
            },
          ),
          Divider(), Divider(),
          new ListTile(
            leading: Icon(Icons.date_range),
            title: new Text('All Your Tasks'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => tasksPage(),
              ));
            },
          ),
          Divider(), Divider(),
            new ListTile(
              leading: Icon(Icons.calendar_today),
              title: new Text('Calendar'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => calendar())
                );
              },
            ),
            Divider(), Divider(),
            Divider(),
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
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add),
        backgroundColor: Color(0xFF373F51),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: (){},),
            IconButton(icon: Icon(Icons.calendar_today), onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => calendar()),);
            },),
          ],
        ),
      ),
    );
  }
}