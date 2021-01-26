import 'package:flutter/material.dart';
import 'todaysPage.dart';
import 'calendarPage.dart';
import 'settingsPage.dart';
import 'inboxPage.dart';
import 'package:to_dolist/Widgets/constants.dart';
import 'package:to_dolist/Widgets/icons_content.dart';
import 'package:to_dolist/newTaskAllPAges/newEventPage.dart';

class tasksPage extends StatefulWidget {
  @override
  _tasksPageState createState() => _tasksPageState();
}

class _tasksPageState extends State<tasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarBackground,
        title: Text(
          'Upcoming Tasks',
          style: kAppBarTextStyle,
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(child: Text('Upcoming', style: kDrawerHeaderTextStyle,),
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
              leading: IconContent(icon: Icons.calendar_today),
              title: new Text('Calendar', style: kDrawerTextStyle,),
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
      body: Center(child: Text('Test')),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context){
              return Dialog(
                  child: EventAddPage(),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))
                  )
              );
            }
        );
      },
        child: Icon(Icons.add, color: Color(0xFFF2FDFF), size: 38.0,),
        backgroundColor: Color(0xFF373F51),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Color(0xFFF2FDFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: IconContent(icon: Icons.settings), onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => settingPage()),);
              },),
              IconButton(icon: IconContent(icon: Icons.calendar_today,), onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => calendar()),);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
