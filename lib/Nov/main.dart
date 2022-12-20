import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_first_project/mainscreen.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:Colors.deepPurple),
      home: Splashscrn1()
  ));
}

class Splashscrn1 extends StatefulWidget {
  @override
  State<Splashscrn1> createState() => _Splashscrn1State();
}

class _Splashscrn1State extends State<Splashscrn1> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds:3), () {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen() ));
    });
  }
  @override
  Widget build(BuildContext context) {     /// function
    return  Scaffold(
        body: Container(
          ///  set background color
          // color: Colors.blue,
          /// set background image
          decoration: const BoxDecoration(
           gradient: LinearGradient(
             begin:Alignment.topCenter ,
               // end: Alignment.bottomCenter,
               colors: [
                 Colors.blue,
                 Colors.purple,
                 Colors.green])
              // image: DecorationImage(
              //     fit: BoxFit.fill,
              //     image:NetworkImage(
              //         "https://media.istockphoto.com/id/1287148666/vector/pastel-abstract-shapes-background.jpg?s=612x612&w=0&k=20&c=GJ9SIGnm8LW1ToQFlBchCBy-TZbGxF178dmTgYePM6o="
              //     )
              // )
          ),
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              const [
                Image(
                    image: AssetImage("assets/images/logo.jpg"),height:75,width:75),
                //Image.asset("assets/images/frappe.png"),
                Text("Pencil",
                    style: TextStyle(color: Colors.black,fontSize:25)),
              ],
            ),
          ),
        )
    );
  }
}