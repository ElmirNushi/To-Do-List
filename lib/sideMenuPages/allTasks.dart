import 'package:flutter/material.dart';
import 'calendarPage.dart';
import 'todaysPage.dart';
import '../newTaskAllPAges/newEventPage.dart';
import 'upComingWeek.dart';
import 'settingsPage.dart';
import '../Widgets/constants.dart';
import '../Widgets/icons_content.dart';

class listScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarBackground,
        title: Text('All Tasks',
          style: kAppBarTextStyle,
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(child: Text('All Tasks', style: kDrawerHeaderTextStyle),
              decoration: BoxDecoration(
                color: Color(0xFF373F51),
              ),
            ),
            SizedBox(height: 5),
            new ListTile(
              leading: IconContent(icon: Icons.event),
              title: new Text('Today', style: kDrawerTextStyle),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => pageTomorrow())
                );
              },
            ),
            SizedBox(height: 5),
            new ListTile(
              leading: IconContent(icon: Icons.date_range),
              title: new Text('Upcoming Week', style: kDrawerTextStyle,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => tasksPage(),
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
            SizedBox(height: 5),
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(height: 5),
            new ListTile(
              leading: IconContent(icon: Icons.lens),
              title: new Text('Finish the Flutter Project', style: TextStyle(color: Color(0xFF373F51), fontFamily: 'Abel', fontSize: 25.0,),),
              onTap: (){},
            ),
            Divider(
              height: 5.0,
              color: Colors.black54,
            ),
            new ListTile(
              leading: IconContent(icon: Icons.lens),
              title: new Text('Study for Java Exam', style: TextStyle(color: Color(0xFF373F51), fontFamily: 'Abel', fontSize: 25.0,),),
              onTap: (){},
            ),
            Divider(
              height: 5.0,
              color: Colors.black54,
            ),
            new ListTile(
              leading: IconContent(icon: Icons.lens),
              title: new Text('Study for Web Sherbime', style: TextStyle(color: Color(0xFF373F51), fontFamily: 'Abel', fontSize: 25.0,),),
              onTap: (){},
            ),
            Divider(
              height: 5.0,
              color: Colors.black54,
            ),
          ],
        ),
      ),
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