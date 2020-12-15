import 'package:flutter/material.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/sideMenuPages/calendarPage.dart';
import '../newTaskAllPAges/newEventPage.dart';
import '../sideMenuPages/settingsPage.dart';
import 'constants.dart';
import 'icons_content.dart';

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
                  )
              );
            }
        );
      },
        child: Icon(Icons.add, color: Color(0xFF373F51), size: 38.0,),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
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
    );
  }
}