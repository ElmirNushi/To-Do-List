import 'package:flutter/material.dart';

class aboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF373F51),
        title: Text(
          'About Us',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'BebasNeue',
            fontSize: 26.0,
          ),
        ),
      ),
      body: aboutPageBody(),
    );
  }
}

class aboutPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('images/logoRandom.png'),
          ),
          Text('Comapny Name', style: TextStyle(fontSize: 40.0, fontFamily: 'BebasNeue',
              color: Color(0xFF373F51),),),
          Text('Designed by Elmir Nushi',
          style: TextStyle(fontFamily: 'Abel', color:Color(0xFF373F51), fontSize: 20.0,
          letterSpacing: 2.5),),
          Container(
            padding: EdgeInsets.all(10.0),
            color: Color(0xFF373F51),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.white
                ),
                SizedBox(width: 10.0,),
                Text('+383 44 555 666',
                  style: TextStyle(color: Colors.white, fontFamily: 'Abel', fontSize: 18.0),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            color: Color(0xFF373F51),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: Row(
              children: <Widget>[
                Icon(
                    Icons.email,
                    color: Colors.white
                ),
                SizedBox(width: 10.0,),
                Text('random.company@gmail.com',
                  style: TextStyle(color: Colors.white, fontFamily: 'Abel', fontSize: 18.0),),
              ],
            ),
          ),
        ],
      )
    );
  }
}

