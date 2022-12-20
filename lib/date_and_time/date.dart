import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class Date extends StatefulWidget{
  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Date"),
      centerTitle: true,),
      body: Stack(
        children: [
          DateTimePicker(initialValue: '',
          firstDate: DateTime(2000),
          lastDate: DateTime(2023),
          icon: Icon(Icons.calendar_month_rounded),
          dateLabelText: 'date',
          onChanged: (val)=>(val),
          validator: (val)
            {},
          onSaved: (val)=>(val),
          ),
        ],
      ),
    );

  }
}