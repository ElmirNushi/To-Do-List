import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import 'sideMenuPages/upComingPage.dart';
import 'sideMenuPages/todaysPage.dart';
import 'sideMenuPages/settingsPage.dart';
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
      body: Container(
        child: _calendarTest(),
      ),
    );
  }
}


