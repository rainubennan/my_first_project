import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Widget_Align(),debugShowCheckedModeBanner: false,));
}

class Widget_Align extends StatefulWidget{
  @override
  State<Widget_Align> createState() => _Widget_AlignState();
}

class _Widget_AlignState extends State<Widget_Align> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alignment"),),
      body: Center(
        child: Container(
          height: 75,
          width: 75,color: Colors.black,
          child: Align( alignment: Alignment.topCenter,
              child: Icon(Icons.apple,color: Colors.white,)),
        ),
      ),
    );
  }
}