import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_first_project/mainscreen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch:Colors.deepPurple),
    home: Splashscrn()
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
   Timer(const Duration(seconds:3), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen() ));
   });
  }
  @override
  Widget build(BuildContext context) {     /// function
   return  Scaffold(
     body: Container(
       decoration: const BoxDecoration(
         image: DecorationImage(
           fit: BoxFit.fill,
           image:NetworkImage(
             "https://media.istockphoto.com/vectors/abstract-hexagon-wallpaper-white-background-3d-vector-illustration-vector-id1212342896?k=20&m=1212342896&s=612x612&w=0&h=fp3B4g_hE54snO4Nf1ggElVnI0gD9s7tPd5JU0eFl9Q="
           )
         )
       ),
       child:Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children:
         const [
           Image(
               image: AssetImage("assets/images/logo.jpg"),height:75,width:75),
           //Image.asset("assets/images/frappe.png"),
           Text("Welcome",
             style: TextStyle(color: Colors.grey,fontSize:25)),
         ],
       ),
     ),
     )
   );
  }
}