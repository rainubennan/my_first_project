import 'package:flutter/material.dart';
import 'package:my_first_project/login_with_validation.dart';
import 'package:my_first_project/registerpage.dart';

void main() {
  runApp(MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey)));
}
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello There !!!",style: TextStyle(
            fontSize:30,fontWeight: FontWeight.w100),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(  //padding used for the gap between column
              padding: EdgeInsets.only(top: 20,bottom: 10),
              child:Center(
              child: Text("Greetings.....",
                style: TextStyle(fontSize:25, fontWeight: FontWeight.bold),
              ),
              ),
            ),
            const Image(image: AssetImage("assets/images/mainscreen.png"),
              height:250,width:500,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loginvalidation() ));
                    },
                  child: Text("Login"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Registeration() ));},
                child: Text("Sign Up"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
