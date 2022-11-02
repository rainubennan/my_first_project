import 'package:flutter/material.dart';
  void main(){
    runApp(MaterialApp(home: Card_Row(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch:Colors.brown),));
  }
  class Card_Row extends StatefulWidget {
  @override
  State<Card_Row> createState() => _Card_RowState();
}

class _Card_RowState extends State<Card_Row> {
    @override
    Widget build(BuildContext context) {
      return Scaffold (
        body: Column(
        children:[
          Row(
        children:const [
          Icon(Icons.home,color: Colors.deepOrange),
          Text(("Heart Shaker"),
          ),
        ],),
      Row(
      children:const [
      Icon(Icons.airplane_ticket,color: Colors.deepOrange),
      Text(("Heart Shaker"),
      ),
      ],),
          Row(
            children:const [
              Icon(Icons.phone_android,color: Colors.brown),
              Text(("Heart Shaker"),
              ),
            ],),
          Row(
            children:const [
              Icon(Icons.phone_android,color: Colors.brown),
              Text(("Heart Shaker"),
              ),
            ],),
          Row(
            children:const [
              Icon(Icons.phone_android,color: Colors.brown),
              Text(("Heart Shaker"),
              ),
            ],),
          Row(
            children:const [
              Icon(Icons.phone_android,color: Colors.brown),
              Text(("Heart Shaker"),
              ),
            ],),
      //     ListTile(
      //       leading: Icon(Icons.home, size: 20,c),
      //       title: Text("Heart Shaker",
      //         style: TextStyle(fontSize: 15, color: Colors.red),),
      //     ),),
      //       Card(
      // child:
      //       ListTile(
      //         leading: Icon(Icons.notification_important_outlined, size: 20),
      //         title: Text("Heart Shaker", style: TextStyle(
      //             fontSize: 15, backgroundColor: Colors.indigo),),
      //       ),),),
      //       Card(
      // child:
      //       ListTile(
      //         leading: Icon(Icons.linked_camera, size: 20),
      //         title: Text("Heart Shaker",
      //           style: TextStyle(fontSize: 15, backgroundColor: Colors.green),),
      //       ),),
      //       Card(
      // child:ListTile(
      //         leading: Icon(Icons.star_border_outlined, size: 20),
      //         title: Text("Heart Shaker",
      //           style: TextStyle(fontSize: 15, backgroundColor: Colors.amber),),
      //       ),),
      //       Card(
      // child:
      //       ListTile(
      //         leading: Icon(Icons.wifi_off_outlined, size: 20),
      //         title: Text("Heart Shaker", style: TextStyle(
      //             fontSize: 15, backgroundColor: Colors.deepOrangeAccent),),
      //       ),),
      //       Card(
      //       child:
      //       ListTile(
      //         leading: Icon(Icons.phone, size: 20),
      //         title: Text("Heart Shaker", style: TextStyle(
      //             fontSize: 15, backgroundColor: Colors.yellow),),
      //       ),),
      //       Card(
      // child:
      //       ListTile(
      //         leading: Icon(Icons.message, size: 20,color: Colors.white12),
      //         title: Text("Heart Shaker", style: TextStyle(
      //             fontSize: 15, color: Colors.white12),),
      //       ),),
      //       Card(
      //       child:
      //       ListTile(
      //         leading: Icon(Icons.volume_mute, size: 20,color: Colors.brown,),
      //         title: Text("Heart Shaker",
      //           style: TextStyle(fontSize: 15, color: Colors.brown),),
      //       ),),
      //       Card(
      // child:
      //       ListTile(
      //         leading: Icon(Icons.stream, size: 20,color: Colors.greenAccent,),
      //         title: Text("Heart Shaker", style: TextStyle(
      //             fontSize: 15, color: Colors.greenAccent),),
      //       ),),
      //       Card(
      // child:
      //       ListTile(
      //         leading: Icon(Icons.audiotrack_sharp, size: 20,color: Colors.purpleAccent),
      //         title: Text("Heart Shaker", style: TextStyle(
      //             fontSize: 15,color: Colors.purpleAccent),),
      //     ),
      //   ),
      //   Card(
      //     child: ListTile(
      //       leading: Icon(Icons.window_sharp, size: 20,color: Colors.teal),
      //       title: Text(
      //         "Heart Shaker",
      //         style: TextStyle(fontSize: 15, color: Colors.teal),
      //       ),
      //     ),
      //   ),
      //   Card(
      //     child: ListTile(
      //       leading: Icon(Icons.plumbing_sharp, size: 20,color: Colors.cyan,),
      //       title: Text(
      //         "Heart Shaker",
      //         style: TextStyle(fontSize: 15, color: Colors.cyan),
      //       ),
      //     ),
      //   ),

    ],),);
  }
}