import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calendarPage.dart';
import 'todaysPage.dart';
import '../newTaskAllPAges/newEventPage.dart';
import 'upComingWeek.dart';
import 'settingsPage.dart';
import '../Widgets/constants.dart';
import '../Widgets/icons_content.dart';
import 'package:to_dolist/Widgets/taskDetails.dart';
import 'package:to_dolist/models/task_models.dart';
import 'package:to_dolist/helpers/dataBaseHelpers.dart';

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
      body: bodyPart(),
          floatingActionButton: FloatingActionButton(onPressed: () {
            showDialog(
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


class bodyPart extends StatefulWidget {
  @override
  _bodyPartState createState() => _bodyPartState();
}

class _bodyPartState extends State<bodyPart> {

  Future<List<Task>> _taskList;

  @override
  void initState()
  {
    super.initState();
  _updateTaskList();
}

_updateTaskList(){
    setState((){
      _taskList = DatabaseHelper.instance.getTaskList();
    });
}

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(height: 5),
          new ListTile(
            title: new Text('Task Name',
              style: TextStyle(
                color: Color(0xFF373F51),
                fontFamily: 'Abel',
                fontSize: 22.0,
              fontWeight: FontWeight.bold),),
            subtitle: new Text('29/01/2021 | 11:52', style: TextStyle(fontFamily: 'Abel', fontSize: 15.0),),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                        child: taskDetails(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(
                                12))
                        )
                    );
                  }
              );
            },
          ),
          Divider(
            height: 5.0,
            color: Colors.black54,
          ),
          new ListTile(
            title: new Text('Task Name', style: TextStyle(
              color: Color(0xFF373F51),
              fontFamily: 'Abel',
              fontSize: 22.0,
                fontWeight: FontWeight.bold),),
            subtitle: new Text('29/01/2021 | 11:52', style: TextStyle(fontFamily: 'Abel', fontSize: 15.0),),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                        child: taskDetails(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(
                                12))
                        )
                    );
                  }
              );
            },
          ),
          Divider(
            height: 5.0,
            color: Colors.black54,
          ),
          new ListTile(
            title: new Text('Task Name', style: TextStyle(
              color: Color(0xFF373F51),
              fontFamily: 'Abel',
              fontSize: 22.0,
                fontWeight: FontWeight.bold),),
            subtitle: new Text('29/01/2021 | 11:52', style: TextStyle(fontFamily: 'Abel', fontSize: 15.0),),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                        child: taskDetails(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(
                                12))
                        )
                    );
                  }
              );
            },
          ),
          Divider(
            height: 5.0,
            color: Colors.black54,
          ),
        ],
    );
  }
}
