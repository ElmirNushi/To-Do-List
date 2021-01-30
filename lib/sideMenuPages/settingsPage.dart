import 'package:flutter/material.dart';
import 'otherSettingsPages/supportPage.dart';
import 'otherSettingsPages/aboutPage.dart';
import 'otherSettingsPages/versionPage.dart';
import 'otherSettingsPages/languagePage.dart';

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
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        Card(
          color: Colors.white,
          elevation: 4.0,
          child: Column(
            children: <Widget>[
              SizedBox(height: 8),
              new ListTile(
                leading: Icon(Icons.wysiwyg, color: Color(0xFF373F51), size: 25.0,),
                title: new Text('Language', style: TextStyle(fontFamily: 'Abel', fontSize: 20,),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => languagePage())
                  );
                },
              ),
              SizedBox(height: 8),
              new ListTile(
                leading: Icon(Icons.help_outline, color: Color(0xFF373F51), size: 25.0,),
                title: new Text('Support', style: TextStyle(fontFamily: 'Abel', fontSize: 20,),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => supportPage())
                  );
                },
              ),
              SizedBox(height: 8),
              new ListTile(
                leading: Icon(Icons.info, color: Color(0xFF373F51), size: 25.0,),
                title: new Text('About', style: TextStyle(fontFamily: 'Abel', fontSize: 20,),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => aboutPage())
                  );
                },
              ),
              SizedBox(height: 8),
              new ListTile(
                leading: Icon(Icons.toc, color: Color(0xFF373F51), size: 25.0,),
                title: new Text('Application Version', style: TextStyle(fontFamily: 'Abel', fontSize: 20,),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => versionPage())
                  );
                },
              ),
              SizedBox(height: 8),
            ],
          )
        ),
      ],
    );
  }
}

