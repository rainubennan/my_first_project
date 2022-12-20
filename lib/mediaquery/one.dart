import 'package:flutter/material.dart';

class Examplee extends StatelessWidget {
  const Examplee({super.key});

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Size of this screen $screenwidth x $screenheight'),
      ),
    );
  }
}
