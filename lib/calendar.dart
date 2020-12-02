import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import 'sideMenuPages/allTasksPage.dart';
import 'sideMenuPages/tomorrowPage.dart';
import 'main.dart';

class calendar extends StatefulWidget {
  @override
  _calendarState createState() => _calendarState();
}

class _calendarState extends State<calendar> {
  CalendarController _calendarController;
  @override
  void initState(){
    super.initState();
    _calendarController = CalendarController();
  }
  @override
  void dispose(){
    _calendarController.dispose();
    super.dispose(); // calendar state
  }
  Widget _calendarTest(){
    return TableCalendar(calendarController: _calendarController); // making a new tabel

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2FDFF),
      appBar: AppBar(
        backgroundColor: Color(0xFF373F51),
        title: Text('Calendar',
          style: TextStyle(color: Color(0xFFF2FDFF), fontFamily: 'BebasNeue', fontSize: 26.0,),
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(child: Text('Calendar', style: TextStyle(
                fontFamily: 'BebasNeue',
                fontSize: 35.0,
                color: Colors.white),),
              decoration: BoxDecoration(
                color: Color(0xFF373F51),
              ),
            ),
            new ListTile(
              leading: Icon(Icons.view_agenda),
              title: new Text('Home Page'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => listScreen())
                );
              },
            ),
            Divider(), Divider(),
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
            Divider(),
          ],
        ),
      ),
      body: Center(
        child: _calendarTest(),
      ),
    );
  }
}
