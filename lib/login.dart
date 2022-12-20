import 'package:flutter/material.dart';
import 'package:my_first_project/registerpage.dart';

import 'mainscreen.dart';
void main(){
  runApp((MaterialApp(home: HomePage(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch: Colors.blueGrey))));

}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool viewenable=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: const Text("LoginPage"),
        centerTitle: true,),
      body: SingleChildScrollView(              //Singlechildscrollview is used for avoid overflow error
        child: Column(
          children: [
            const Padding(      //padding used for the gap between column
              padding: EdgeInsets.only(top: 20),     // only top gap
              child: Text("LoginPage",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30.0), // all is used because every side 30inch
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon:Icon(Icons.account_circle),
                     hintText:"Username must be your email",
                    label: Text("Username"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )
                ),
              ),
            ),
        Padding(
        padding: EdgeInsets.all(15.0),
    child: TextField(
    obscuringCharacter: "*",
    obscureText: viewenable,
    decoration: InputDecoration(
    suffixIcon:IconButton(onPressed:() {
      setState(() {
        if (viewenable) {
          viewenable = false;
        } else {
          viewenable = true;
        }
      });
    }, icon: Icon(viewenable== true? Icons.visibility_off: Icons.visibility)),
    prefixIcon: const Icon(Icons.password),
        label: const Text("Password"),
    border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    )),
      // validator:(password){
      //   if(password==null || password.length<6 || password.isEmpty){
      //     return 'Password  length should greater than 6/ should not be null';
      //   } else  {
      //     return null;
      //   }
      // },
      // textInputAction: TextInputAction.done,
    ),
    ),
    Padding
              (
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child:ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen() ));
              }, child:const Text("Login") ,),
            ),
            TextButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Registerpage() ));
                },
                child: const Text("Not a User? Register here!!"))
          ],
        ),
      ),
    );
  }
}


