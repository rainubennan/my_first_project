import 'dart:core';
import 'package:flutter/material.dart';

void nmain(){
  runApp(MaterialApp(home: Listview_Withbuilder(),));
}
class Listview_Withbuilder extends StatelessWidget {

   var datas=<String>['Data 1','Data 2','Data 3'];
   var color =<int>[600,500,100];
// card shape => shape:RoundRectangleBorder(borderRadius:BorderRadius.cirlce(40)),
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("List2")),
     body: ListView.builder(
         itemBuilder:(BuildContext context, int index)
    {
    return Container(

    height: 50,
    color:Colors.deepPurple[color[index]],
    child:Center(child:Text(datas[index]),),

    );
    }
       ),
     );

  }

}