import 'package:flutter/material.dart';
import 'package:to_dolist/Widgets/customTextField.dart';
import 'package:to_dolist/Widgets/icons_content.dart';
import '../Widgets/custom_button.dart';
import 'package:to_dolist/Widgets/constants.dart';

class taskDetails extends StatefulWidget {
  @override
  _taskDetailsState createState() => _taskDetailsState();
}

class _taskDetailsState extends State<taskDetails> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(child: Text('Study for Jave Exam', style: kTaskNameDetails,)),
          SizedBox(height: 24,),
          IconContent(icon: Icons.date_range),
          SizedBox(height: 4),
          Text('29/01/2021', style: kTaskDetails),
          SizedBox(height: 10),
          IconContent(icon: Icons.schedule),
          SizedBox(height: 4),
          Text('11:52', style: kTaskDetails),
          SizedBox(height: 10),
          customTextField(labelText: 'Add a note for the task: '),
          SizedBox(height: 10),
          _actionButton(context)
        ],
      ),
    );
  }

  Widget _actionButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomButton(onPressed: () {
          Navigator.of(context).pop();
        }, buttonText: 'Close', ),
        CustomButton(onPressed: () {}, buttonText: 'Finish Task'),
      ],
    );
  }
}