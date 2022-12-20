import 'package:flutter/material.dart';

class MediaQueryy extends StatelessWidget {
  const MediaQueryy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MediaQuery")),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(color: Colors.amber),
            child: const Center(
                child: Text(
                  "Left Side",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: const Center(
              child: Text(
                "Right side",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MediaQueryy(),
  ));
}