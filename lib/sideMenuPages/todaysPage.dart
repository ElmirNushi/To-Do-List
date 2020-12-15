import 'package:flutter/material.dart';
import 'upComingPage.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/sideMenuPages/calendarPage.dart';
import 'settingsPage.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/Widgets/appBarDesign.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/Widgets/bottomAppBar.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/Widgets/constants.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/Widgets/icons_content.dart';

class pageTomorrow extends StatefulWidget {
  @override
  _pageTomorrowState createState() => _pageTomorrowState();
}

class _pageTomorrowState extends State<pageTomorrow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarBackground,
        title: Text(
          'Today',
          style: kAppBarTextStyle,
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(child: Text('Today', style: kDrawerHeaderTextStyle,),
              decoration: BoxDecoration(
                color: Color(0xFF373F51),
              ),
            ),
            SizedBox(height: 5),
            new ListTile(
              leading: IconContent(icon: Icons.view_agenda),
              title: new Text('Inbox', style: kDrawerTextStyle,),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => listScreen()));},
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
            Divider(color: Colors.black54,),
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
      body: toDoList(),
    );
  }
}
