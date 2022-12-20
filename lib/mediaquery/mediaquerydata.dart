import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("MediaQuery Data"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Text(deviceData.toString()),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(const MaterialApp(home: MyWidget()));
}