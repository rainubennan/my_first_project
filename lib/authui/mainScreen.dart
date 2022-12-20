import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Auth(),
  debugShowCheckedModeBanner: false,));
}

class Auth extends StatefulWidget{
  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     // appBar: AppBar(),
     body: Container(
       width:double.infinity,
       height: double.infinity,
       decoration: BoxDecoration(
         image:DecorationImage(
           image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_jdJwXyHXF7O1WnNllqMdswQZuw346I_YQQ&usqp=CAU"),
         fit: BoxFit.fill)),



       
     ),
     
     
     

   );
  }
}