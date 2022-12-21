import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: L_ist(),debugShowCheckedModeBanner: false,));
}

class L_ist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(child: Text("hello")),);
  }

}