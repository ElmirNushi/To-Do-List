import 'package:flutter/material.dart';
import 'upComingPage.dart';
import '../main.dart';
import 'package:to_dolist/calendarPage.dart';
import 'settingsPage.dart';

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
          'Today',
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
            new DrawerHeader(child: Text('Today', style: TextStyle(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => listScreen()));},
            ),
            SizedBox(height: 5),
            new ListTile(
              leading: Icon(Icons.date_range, color: Color(0xFF373F51), size: 30.0,),
              title: new Text('Upcoming Tasks'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => tasksPage())
                );
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
            Divider(color: Colors.black54,),
            SizedBox(height: 5),
            new ListTile(
              leading: Icon(Icons.settings),
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
