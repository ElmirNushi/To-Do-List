import 'package:flutter/material.dart';
import 'file:///C:/Users/Dell/AndroidStudioProjects/to_dolist/lib/Widgets/customTextField.dart';
import '../Widgets/custom_button.dart';

class EventAddPage extends StatefulWidget {
  @override
  _EventAddPageState createState() => _EventAddPageState();
}

class _EventAddPageState extends State<EventAddPage> {

  String _selectedDate = 'Pick Date For The Task';
  String _selectedTime = 'Pick Time For The Task';

  Future _pickDate() async {
    DateTime datepick = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime.now().add(Duration(days: -365)),
        lastDate: new DateTime.now().add(Duration(days: 365)));
    if (datepick != null) setState(() {
      _selectedDate = datepick.toString();
    });
  }

  Future _pickTime() async{
    TimeOfDay timepick = await showTimePicker(
      context: context,
      initialTime: new TimeOfDay.now()
    );
    if (timepick != null){
      setState(() {
        _selectedTime = timepick.toString();
      });
    }
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(child: Text('Add new a task')),
          SizedBox(height: 24,),
          customTextField(labelText: 'Enter task name: '),
          SizedBox(height: 10),
          _dateTimePicker(Icons.date_range, _pickDate, _selectedDate),
          SizedBox(height: 10),
          _dateTimePicker(Icons.schedule, _pickTime, _selectedTime),
          SizedBox(height: 10),
          _actionButton(context)
        ],
      ),
    );
  }

  Widget _dateTimePicker(IconData icon, VoidCallback onPressed, String value) {
    return FlatButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Row(
          children: <Widget>[
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(icon,
                  color: Color(0xFF373F51), size: 30),
            ),
            Text(value),
            SizedBox(height: 15),
          ],
        ),
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
        CustomButton(onPressed: () {}, buttonText: 'Submit'),
      ],
    );
  }
}
