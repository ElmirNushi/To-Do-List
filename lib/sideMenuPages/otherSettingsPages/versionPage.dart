import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/sideMenuPages/settingsPage.dart';
import 'package:flutter/material.dart';

class versionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF373F51),
        title: Text(
          'Application Version',
          style: TextStyle(
            color: Color(0xFFF2FDFF),
            fontFamily: 'BebasNeue',
            fontSize: 26.0,
          ),
        ),
      ),
    );
  }
}