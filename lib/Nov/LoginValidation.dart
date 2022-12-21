import 'package:flutter/material.dart';

import 'list.dart';

void main() {
  runApp(MaterialApp(
    home: Log_Validation(),
    debugShowCheckedModeBanner: false,
  ));
}

class Log_Validation extends StatefulWidget {
  @override
  State<Log_Validation> createState() => _Log_ValidationState();
}

class _Log_ValidationState extends State<Log_Validation> {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            Center(
                child: Text(
              "Login",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      label: Text("Username"),
                      hintText: "Enter your username",
                      prefixIcon: Icon(Icons.account_box),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  textInputAction: TextInputAction.next,
                  validator: (email) {
                    if (email!.isEmpty ||
                        !(email.contains('@')) ||
                        email == null) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter your password",
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
                textInputAction: TextInputAction.done,
                validator: (password){
                  if(password!.isEmpty || password.length<6){
                    return "Enter 6 character password , Not a valid password" ;
                  } else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(onPressed: () {final valid =formkey.currentState!.validate();
                if(valid){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => L_ist()));
                }else{
                  return null;
                }
                },
                  child: Text("Login")),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {}, child: Text("Not a user? Register Here!")),
          ],
        ),
      ),
    );
  }
}
