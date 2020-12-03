import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/Widgets/customTextField.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/Widgets/custom_button.dart';

class TaskAddPage extends StatefulWidget {
  @override
  _TaskAddPageState createState() => _TaskAddPageState();
}

class _TaskAddPageState extends State<TaskAddPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(child: Text('Add new task')),
          SizedBox(height: 24,),
          customTextField(labelText: 'Enter task name'),
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
        }, buttonText: 'Close'),
        CustomButton(onPressed: () {}, buttonText: 'Submit'),
      ],
    );
  }
}
