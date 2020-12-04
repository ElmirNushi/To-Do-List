import 'package:flutter/material.dart';
import 'package:to_dolist/main.dart';
import 'todaysPage.dart';
import 'package:to_dolist/calendarPage.dart';
import 'settingsPage.dart';

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
          'Upcoming Tasks',
          style: TextStyle(
            color: Color(0xFFF2FDFF),
            fontFamily: 'BebasNeue',
            fontSize: 26.0,
          ),
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(child: Text('Upcoming', style: TextStyle(
                fontFamily: 'BebasNeue',
                fontSize: 35.0,
                color: Colors.white),),
              decoration: BoxDecoration(
                color: Color(0xFF373F51),
              ),
            ),
            SizedBox(height: 5),
            new ListTile(
              leading: Icon(Icons.view_agenda, color: Color(0xFF373F51), size: 30.0,),
              title: new Text('Inbox'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => listScreen()));},
            ),
            SizedBox(height: 5),
            new ListTile(
              leading: Icon(Icons.event, color: Color(0xFF373F51), size: 30.0,),
              title: new Text('Today'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => pageTomorrow(),
                ));
              },
            ),
            SizedBox(height: 5),
            new ListTile(
              leading: Icon(Icons.calendar_today, color: Color(0xFF373F51), size: 30.0,),
              title: new Text('Calendar'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => calendar())
                );
              },
            ),
            Divider(
              color: Colors.black54,
            ),
            new ListTile(
              leading: Icon(Icons.settings, color: Color(0xFF373F51), size: 30.0,),
              title: new Text('Settings'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => settingPage())
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
