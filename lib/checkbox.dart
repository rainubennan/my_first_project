import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Checkbox_demo(),));
}

class Checkbox_demo extends StatefulWidget{


  @override
  State<Checkbox_demo> createState() => _Checkbox_demoState();
}

class _Checkbox_demoState extends State<Checkbox_demo> {
  bool ischeck=false;
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Column(
       children: [
         SizedBox(height: 50,),
         Checkbox(value: ischeck,
             onChanged: (bool? value)
         {
           setState(() {
             ischeck= value!;
           });
         }),
         // Text("Female")
       ],

     ),
   );
  }
}