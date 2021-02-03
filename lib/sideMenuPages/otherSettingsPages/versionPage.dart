import 'package:flutter/material.dart';
import 'package:to_dolist/Widgets/icons_content.dart';
import 'package:to_dolist/Widgets/constants.dart';

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
      body: versionPageBody(),
    );
  }
}

class versionPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(6.0),
      children: <Widget>[
        Card(
          elevation: 4.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              SizedBox(height: 10.0),
              Text(
                'Version',
                style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontSize: 25.0,
                    color: Color(0xFF373F51)),
                textAlign: TextAlign.center,
              ),
              new ListTile(
                title: new Text(
                  'Application Verson: 1.0.1',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Abel'),
                ),
                onTap: () {},
              ),
              Divider(
                color: Color(0xFF373F51),
              ),
              new ListTile(
                title: new Text(
                  'Last Updated: Today',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Abel'),
                ),
                onTap: () {},
              ),
              SizedBox(height: 15.0,),
            ],
          ),
        ),
        Card(
          elevation: 4.0,
          child: Column(
            children: <Widget>[
              Text(
                'Updates',
                style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontSize: 25.0,
                    color: Color(0xFF373F51)),
                textAlign: TextAlign.center,
              ),
              new ListTile(
                title: new Text(
                  'Watch our new updates',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Abel'),
                ),
                onTap: () {},
              ),
              Divider(
                color: Color(0xFF373F51),
              ),
              new ListTile(
                title: new Text(
                  'Give us some feedback',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Abel'),
                ),
                onTap: () {},
              ),
              SizedBox(height: 15.0,),
            ],
          ),
        ),
        Card(
          elevation: 4.0,
          child: Column(
            children: <Widget>[
              Text(
                'Bugs',
                style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontSize: 25.0,
                    color: Color(0xFF373F51)),
                textAlign: TextAlign.center,
              ),
              new ListTile(
                title: new Text(
                  'Report a bug',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Abel'),
                ),
                onTap: () {},
              ),
              SizedBox(height: 15.0,),
            ],
          ),
        ),
      ],
    );
  }
}
