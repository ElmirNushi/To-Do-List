import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: Color(0xFF373F51), size: 25.0,),
      ],
    );
  }
}