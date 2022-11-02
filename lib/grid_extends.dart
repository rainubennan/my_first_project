import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Grid_Demo1(),debugShowCheckedModeBanner: false,));
}

class Grid_Demo1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Grid Extends"),),
     body: GridView.extent(
         maxCrossAxisExtent: 90,
         crossAxisSpacing: 10,
         mainAxisSpacing: 20,
    padding: EdgeInsets.all(10),
    shrinkWrap: true,
    children: const [
      Card(
    color: Colors.brown,
    ),
    Card(
    color: Colors.brown,
    ),
    Card(
    color: Colors.brown,
    ),
    Card(
    color: Colors.brown,
    ),
    Card(
    color: Colors.brown,
    ),],
   ),);
  }

}