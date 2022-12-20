import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Edit_Application(),debugShowCheckedModeBanner: false,));
}

class Edit_Application extends StatefulWidget{
  @override
  State<Edit_Application> createState() => _Edit_ApplicationState();
}

class _Edit_ApplicationState extends State<Edit_Application> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Application Form"),),
      body: Form(
        key: formkey,
        child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Name",style: TextStyle(fontSize:20),),
          ),
            TextFormField(
              decoration: InputDecoration(
                label:Text(" Enter your  name"),
                border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
              ),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Email ID",style: TextStyle(fontSize:20),),
          ),
          TextFormField(
            decoration: InputDecoration(
                label:Text(" Enter your Email ID"),
                border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
            ),



        validator:(text) {
          if (text!.isEmpty || !(text.contains('@')) || text == null) {
            return 'Enter a valid email';
          } else {
            return null;
          }
        },
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Job",style: TextStyle(fontSize:20),),
          ),
          TextFormField(
            decoration: InputDecoration(
                label:Text(" Enter your current job"),
                border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
            ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){ }, child: Text("Update")),
          )

      ],),
    ),);
  }
}