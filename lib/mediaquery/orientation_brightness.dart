import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrientationBrightness extends StatelessWidget {
  const OrientationBrightness({super.key});

  @override
  Widget build(BuildContext context) {
    var screendata = MediaQuery.of(context);
    // return Scaffold(
    //   appBar: AppBar(title: const Text('Orientation & Brightness')),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text(
    //           screendata.platformBrightness.toString(),
    //         ),
    //         Text(screendata.orientation.toString())
    //       ],
    //     ),
    //   ),
    // );
    return Scaffold(
      body: Builder(
        builder: (context) {
          if (screendata.orientation == Orientation.portrait) {
            return portraitview(screendata.size);
          } else {
            return landscapeview(screendata.size);
          }
        },
      ),
    );
  }

  Widget portraitview(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.3,
        height: size.height * 0.3,
        decoration: const BoxDecoration(color: Colors.indigoAccent),
        child: const Center(
          child: Text(
            "Portrait",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget landscapeview(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.3,
        height: size.height * 0.3,
        decoration: const BoxDecoration(color: Colors.limeAccent),
        child: const Center(
          child: Text(
            "Lanscape",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(const MaterialApp(
    home: OrientationBrightness(),
  ));
}