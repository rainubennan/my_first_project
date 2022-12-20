import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Simple extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Simple_Alert() ,

    );
  }

  }
class Simple_Alert extends StatefulWidget{

  @override
  State<Simple_Alert> createState() => _Simple_AlertState();
}

class _Simple_AlertState extends State<Simple_Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
        backgroundColor: Colors.green),
      body: Column(
        children: [
          ElevatedButton(onPressed: () async {
    showDialog(context: (context), builder: (context){
    return AlertDialog(
    title: Text('Do you really want to  exit ?'),
    actions: [
    TextButton(onPressed: (){ SystemNavigator.pop();}, child: Text("Yes")),
    TextButton(onPressed: (){ Navigator.pop(context);}, child:Text('No'), ),
    TextButton(onPressed: (){ Navigator.pop(context);}, child: Text('Cancel'),),
    ],
    );
    });
    }, child: Text('Show Dialog'),),
        ],
      )
      );
  }
}