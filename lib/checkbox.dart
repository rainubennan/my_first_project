import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Checkbox_demo(),));
}
class Demo_Chekbox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(title: Text("Checkbox")),
     ),
   );
  }

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
     child: Checkbox(
             checkColor:Colors.white,
             value: ischeck,
             onChanged: (bool ? value)
         {
           setState(() {
             ischeck= value!;
           });
         }),
         // Text("Female")


     );
  }
}