import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Demo_Inkwell extends StatefulWidget{
  @override
  State<Demo_Inkwell> createState() => _Demo_InkwellState();
}

class _Demo_InkwellState extends State<Demo_Inkwell> {

   String inkwell = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
             onTap: (){
                 setState(() {
                   inkwell="Tapped";
                 });
                  },
                onLongPress: (){
                  setState(() {
                    inkwell="Long Tapped";

                  });
             },
    child: Container(
                  height: 75,
                  width: 50,color: Colors.green,
                  child: Text("inkwell"),

            )
            ),
          ],
          ),
        ),
          );

  }
}