import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Tile_Expansion(),));
}

class Tile_Expansion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title:Text("Expansion Tile")),
     body: ExpansionTile(
       title: Text("colors"),
       subtitle: Text("click to expand"),
       children: [
         ListTile(
           leading: CircleAvatar(
             backgroundColor: Colors.white,
           ),
         ),
         ListTile(
           leading: CircleAvatar(
             backgroundColor: Colors.grey,
           ),
         ),
         ListTile(
           leading: CircleAvatar(
             backgroundColor: Colors.black,
           ),
         )
       ],
     ),
   );
  }

}