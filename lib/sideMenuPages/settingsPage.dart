import 'package:flutter/material.dart';
import 'otherSettingsPages/supportPage.dart';
import 'otherSettingsPages/aboutPage.dart';
import 'otherSettingsPages/versionPage.dart';

class settingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF373F51),
        title: Text('Settings',
          style: TextStyle(color: Color(0xFFF2FDFF), fontFamily: 'BebasNeue', fontSize: 26.0,),
        ),
      ),
      body: otherSettingPage(),
    );
  }
}

class otherSettingPage extends StatefulWidget {
  @override
  _otherSettingPageState createState() => _otherSettingPageState();
}

class _otherSettingPageState extends State<otherSettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 20),
        new ListTile(
          leading: Icon(Icons.help_outline, color: Color(0xFF373F51), size: 25.0,),
          title: new Text('Support', style: TextStyle(fontFamily: 'Abel', fontSize: 25,),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => supportPage())
            );
          },
        ),
        SizedBox(height: 15),
        Divider(),
        SizedBox(height: 15),
        new ListTile(
          leading: Icon(Icons.info, color: Color(0xFF373F51), size: 25.0,),
          title: new Text('About', style: TextStyle(fontFamily: 'Abel', fontSize: 25,),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => aboutPage())
            );
          },
        ),
        SizedBox(height: 15),
        Divider(),
        SizedBox(height: 15),
        new ListTile(
          leading: Icon(Icons.toc, color: Color(0xFF373F51), size: 25.0,),
          title: new Text('Application Version', style: TextStyle(fontFamily: 'Abel', fontSize: 25,),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => versionPage())
            );
          },
        ),
        SizedBox(height: 15),
        Divider(),
      ],
    );
  }
}

