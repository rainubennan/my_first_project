import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Grid_Stack(),debugShowCheckedModeBanner: false,));
}
class Grid_Stack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title:Text("GridView")
     ),
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),

    ),
    );
     }}