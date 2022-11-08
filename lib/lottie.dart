import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const Lottie_demo());

class Lottie_demo extends StatelessWidget {
  const Lottie_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            // Load a Lottie file from your assets
            // Lottie.asset('assets/LottieLogo1.json'),

            // Load a Lottie file from a remote url
            Lottie.network(
                'https://assets3.lottiefiles.com/packages/lf20_uBcVylM68q.json'),

            // Load an animation and its images from a zip file
            // Lottie.asset('assets/lottiefiles/angel.zip'),
          ],
        ),
      ),
    );
  }
}