import 'package:flutter/material.dart';
import 'package:to_dolist/Widgets/icons_content.dart';
import 'package:to_dolist/Widgets/constants.dart';

class languagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF373F51),
        title: Text(
          'Language',
          style: TextStyle(
            color: Color(0xFFF2FDFF),
            fontFamily: 'BebasNeue',
            fontSize: 26.0,
          ),
        ),
      ),
      body: bodyLangaugePage(),
    );
  }
}

class bodyLangaugePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        SizedBox(height: 5,),
        new ListTile(
          leading: IconContent(icon: Icons.radio_button_checked,),
          title: new Text('English', style: kDrawerTextStyle),
          onTap: (){},
        ),
        Divider(color: Colors.black54,),
      ],
    );
  }
}

