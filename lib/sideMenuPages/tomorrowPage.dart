import 'package:flutter/material.dart';
import 'allTasksPage.dart';
import '../main.dart';

class pageTomorrow extends StatefulWidget {
  @override
  _pageTomorrowState createState() => _pageTomorrowState();
}

class _pageTomorrowState extends State<pageTomorrow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2FDFF),
      appBar: AppBar(
        backgroundColor: Color(0xFF373F51),
        title: Text(
          'Tomorrow Tasks',
          style: TextStyle(
            color: Color(0xFFF2FDFF),
            fontFamily: 'BebasNeue',
            fontSize: 26.0,
          ),
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new DrawerHeader(child: Text('Tomorrow Tasks', style: TextStyle(
                fontFamily: 'BebasNeue',
                fontSize: 35.0,
                color: Colors.white),),
              decoration: BoxDecoration(
                color: Color(0xFF373F51),
              ),
            ),
            new ListTile(
              leading: Icon(Icons.today),
              title: new Text('Home Page'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => listScreen()));},
            ),
            Divider(),
            new ListTile(
              leading: Icon(Icons.date_range),
              title: new Text('All your tasks'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => tasksPage())
                );
              },
            ),
            Divider(),
          ],
        ),
      ),
      body: toDoList(),
    );
  }
}
