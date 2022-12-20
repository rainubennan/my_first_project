import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NoMediaquery extends StatelessWidget {
  const NoMediaquery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("No MediaQUery"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Container(
            width: 200,
            // height: 200,
            decoration: const BoxDecoration(
              color: Colors.purple,
            ),
          ),
          Container(
            width: 200,
            // height: 200,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

void main(List<String> args) {
  runApp(const MaterialApp(
    home: NoMediaquery(),
  ));
}