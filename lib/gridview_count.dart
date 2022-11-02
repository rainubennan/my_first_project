import 'package:flutter/material.dart';
 void main(){
   runApp(MaterialApp(home: Grid_Count(),debugShowCheckedModeBanner: false,));
 }
class Grid_Count extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grid Count",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
          crossAxisCount: 4, crossAxisSpacing: 15, mainAxisSpacing: 15,
      shrinkWrap: true,
      children: List.generate(10, (index) {
        return  Padding(
            padding: EdgeInsets.all(20),
            child:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
        image: NetworkImage(" "),
        fit:BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(10),
        ),
        ),),);
      },),),
    );
  }
}