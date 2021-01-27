import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import 'todaysPage.dart';
import 'settingsPage.dart';
import 'allTasks.dart';
import 'package:to_dolist/Widgets/constants.dart';
import 'package:to_dolist/Widgets/icons_content.dart';
import 'upComingWeek.dart';

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
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarBackground,
        title: Text('Calendar',
          style: kAppBarTextStyle,
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(child: Text('Calendar', style: kDrawerHeaderTextStyle,),
              decoration: BoxDecoration(
                color: Color(0xFF373F51),
              ),
            ),
            SizedBox(height: 5),
            new ListTile(
              leading: IconContent(icon: Icons.view_agenda),
              title: new Text('Inbox', style: kDrawerTextStyle,),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => listScreen()));},
            ),
            SizedBox(height: 5),
            new ListTile(
              leading: IconContent(icon: Icons.event),
              title: new Text('Today', style: kDrawerTextStyle,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => pageTomorrow(),
                ));
              },
            ),
            SizedBox(height: 5),
            new ListTile(
              leading: IconContent(icon: Icons.date_range),
              title: new Text('Upcoming Tasks', style: kDrawerTextStyle,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => tasksPage())
                );
              },
            ),
            Divider(
              color: Colors.black54,
            ),
            new ListTile(
              leading: IconContent(icon: Icons.settings),
              title: new Text('Settings', style: kDrawerTextStyle,),
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
      body: Container(
        child: _calendarTest(),
      ),
    );
  }
}


