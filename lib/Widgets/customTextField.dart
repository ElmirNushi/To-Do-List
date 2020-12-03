import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final String labelText;
  customTextField({@required this.labelText});
  @override
  Widget build(BuildContext context) {
    return           TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          labelText: labelText),
    );
  }
}
