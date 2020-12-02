import 'package:flutter/material.dart';
import 'package:to_dolist/main.dart';
import 'tomorrowPage.dart';

class tasksPage extends StatefulWidget {
  @override
  _tasksPageState createState() => _tasksPageState();
}

class _tasksPageState extends State<tasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2FDFF),
      appBar: AppBar(
        backgroundColor: Color(0xFF373F51),
        title: Text(
          'All Your Tasks',
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
            new DrawerHeader(child: Text('All Your Tasks', style: TextStyle(
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
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => listScreen()));},
            ),
            Divider(),
            new ListTile(
              leading: Icon(Icons.event),
              title: new Text('Tomorrow Tasks'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => pageTomorrow(),
                ));
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
