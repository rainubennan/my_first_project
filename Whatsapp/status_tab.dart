import 'package:flutter/material.dart';

class Status_Tab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("STATUS"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar()
            ],
          )
        ],
      ),
    );
  }

}