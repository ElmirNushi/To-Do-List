import 'package:flutter/material.dart';
import 'package:to_dolist/calendarPage.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/sideMenuPages/todaysPage.dart';
import 'newTaskAllPAges/newEventPage.dart';
import 'sideMenuPages/upComingPage.dart';
import 'sideMenuPages/settingsPage.dart';
import 'newTaskAllPAges/newTaskPage.dart';

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
        title: Text('Inbox',
          style: TextStyle(color: Color(0xFFF2FDFF), fontFamily: 'BebasNeue', fontSize: 26.0,),
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
          new DrawerHeader(child: Text('Inbox', style: TextStyle(
            fontFamily: 'BebasNeue',
            fontSize: 35.0,
          color: Colors.white),),
            decoration: BoxDecoration(
              color: Color(0xFF373F51),
              ),
            ),
            SizedBox(height: 5),
          new ListTile(
            leading: Icon(Icons.event, color: Color(0xFF373F51), size: 30.0,),
            title: new Text('Today'),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => pageTomorrow())
              );
            },
          ),
            SizedBox(height: 5),
          new ListTile(
            leading: Icon(Icons.date_range, color: Color(0xFF373F51), size: 30.0,),
            title: new Text('Upcoming Tasks'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => tasksPage(),
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
            SizedBox(height: 5),
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

class toDoList extends StatefulWidget {
  @override
  _toDoListState createState() => _toDoListState();
}
class _toDoListState extends State<toDoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context){
            return Dialog(
                child: EventAddPage(),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))
            ));
          }
        );
      },
      child: Icon(Icons.add, color: Color(0xFF373F51), size: 30.0,),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.settings, color: Color(0xFF373F51), size: 30.0,), onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => settingPage()),);
            },),
            IconButton(icon: Icon(Icons.calendar_today, color: Color(0xFF373F51), size: 30.0,), onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => calendar()),);
            },),
          ],
        ),
      ),
    );
  }
}