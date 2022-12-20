import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl_browser.dart';
void main() {
  return runApp(MyApp());
}
/// My app class to display the date range picker
class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}
/// State for MyApp
class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Date and Time Picker'),
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              DateTimePicker(
                type: DateTimePickerType.dateTimeSeparate,
                use24HourFormat:  true,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2023),
                icon: const Icon(Icons.event),
                dateLabelText: "Date",
                timeLabelText: "Time",

                selectableDayPredicate: (date) {
                  ///// Disable weekend days to select from the calendar
                  if (date.weekday == 6 || date.weekday == 7) {
                    return false;
                  }

                  return true;
                },
                onChanged: (val) => (val),
                validator: (val) {
                  (val);
                  return null;
                },
                onSaved: (val) => (val),
              ),
            ],
          ),
        ),
      ),
    );
  }
}