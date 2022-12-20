import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_first_project/Project/My_Mainscreen.dart';
import 'package:my_first_project/Project/progress.dart';

void main() {
  runApp(MaterialApp(
    home: Splashscrn(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch:Colors.blueGrey),
  ));
}

class Splashscrn extends StatefulWidget {
  @override
  State<Splashscrn> createState() => _SplashscrnState();
}

class _SplashscrnState extends State<Splashscrn> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
      My_MainScreen() ));
    });
  }

  @override
  Widget build(BuildContext context) {
    /// function
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Positioned(
              height: 100,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Lottie.network(
                        'https://assets10.lottiefiles.com/packages/lf20_Au6z826BEy.json'),
                  ),
                  const SizedBox(
                    width: 175,
                    height: 75,
                    child: Progress(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
