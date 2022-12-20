import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridNormal(),
  ));
}

class GridNormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing:6,
          mainAxisSpacing:12,
        ),
        children: [
          Container(width:20,height:7,color: Colors.purple[200],child: Icon(Icons.flash_on,color: Colors.white,),),
          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Container(color: Colors.yellow,),
          Container(color: Colors.blueAccent,),
          Container(color: Colors.black,),
        ],
      ),
    );
  }
}