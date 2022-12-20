import 'package:flutter/material.dart';
 void main(){
   runApp(MaterialApp(home: Stack_Demo(),debugShowCheckedModeBanner: false,));
 }
class Stack_Demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Stack"),),
     body: Center(
       child: Stack(
         children: [
           Positioned(
             top: 30,
             right: 30,
             child: Container(
               width: 75,
             height: 75,
             color: Colors.green,
         ),
           ),
         Positioned(
           top: 30,
           left: 30,
           child: Container(
             width: 75,
             height: 75,
             color: Colors.red,
           ),
         ),
         Positioned(

           bottom: 50,
           right: 50,
           child: Container(
             width:10,
             height: 10,
             color:Colors.purple
           ),
         )],
       ),
     ),
   );
  }

}