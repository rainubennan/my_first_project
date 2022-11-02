import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
      home: Registeration(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey)));
}

class Registeration extends StatelessWidget {
  var formkey = GlobalKey<FormState>();

  TextEditingController pass = TextEditingController();
  TextEditingController cpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Here!!",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100)),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                  child: Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              )),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                //we can use validator property
                decoration: const InputDecoration(
                    hintText: "Username must be a valid email id",
                    labelText: "Username",
                    border: OutlineInputBorder()),
                validator: (email) {
                  if (email!.isEmpty || !email.contains('@')) {
                    return 'Enter a valid email';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: pass,
                obscuringCharacter: "*",
                decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'Password  length should greater than 6/ should not be null';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: cpass,
                obscuringCharacter: "*",
                decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                validator: (password) {
                  if (password!.isEmpty ||
                      password.length < 6 ||
                      pass.text == cpass.text) {
                    return 'Password should be same';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0, right: 40),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Registration successful!'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              // Code to execute.
                            },
                          ),
                        ),
                      );
                    } else {
                      Fluttertoast.showToast(
                          msg: "Invalid username/ password",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          // timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                  },
                  child: Text("Register Here!!")),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class Registerpage extends StatelessWidget {
//   var formkey=GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //   body: Center(
//       //       child: Text(
//       //         "Welcome  To MyApp",
//       //        style:TextStyle(fontSize:30,fontWeight:FontWeight.bold,color: Colors.lightGreen ),
//       //   ),
//       // ),
//       appBar: AppBar(
//         title: const Text("Sign Up"),
//         centerTitle: true,),
//       body: SingleChildScrollView(              //Singlechildscrollview is used for avoid overflow error
//         child: Column(
//           children: [
//             const Padding(      //padding used for the gap between column
//               padding: EdgeInsets.only(top: 20),     // only top gap
//               child: Text("Create Your Account, its free",
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(30.0), // all is used because every side 30inch
//               child: TextField(
//                 decoration: InputDecoration(
//                     prefixIcon:Icon(Icons.account_circle),
//                     hintText:"Enter a valid email address",
//                     label: Text("Enter email address"),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                     )),
//                 //    validator:(text) {
//                 //   if (text!.isEmpty || !(text.contains('@')) || text == null) {
//                 //     return 'Enter a valid email';
//                 //   } else {
//                 //     return null;
//                 //   }
//                 // },
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(15.0),
//               child: TextField(
//                 obscuringCharacter: "*",
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     prefixIcon:Icon(Icons.password),
//                     label: Text("Enter Password"),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                     )),
//               ),
//             ),
//             const Padding(padding: EdgeInsets.all(15.0),
//               child: TextField(
//               obscuringCharacter: "*",
//               obscureText: true,
//               decoration: InputDecoration(
//                   prefixIcon:Icon(Icons.password),
//                   label: Text("Re-enter Password"),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(20)),
//                   )),
//                   // validator:(text){
//                   //   if(text==null || text.length<6 || text.isEmpty || ){
//                   //     return 'Password  length should greater than 6/ should not be null';
//                   //   }
//                   // }
//             ),
//             ),
//             Padding
//               (
//               padding: const EdgeInsets.only(top: 20, bottom: 20),
//               child:ElevatedButton(onPressed: () {
//                 // Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage() ));
//               }, child:const Text("Sign Up") ,),
//             ),
//             Text("Already have an account"),
//             TextButton(
//                 onPressed: () {
//                   // Navigator.push(context, MaterialPageRoute(builder: (context)=>Registerpage() ));
//                 },
//                 child: const Text("Login"))
//           ],
//         ),
//       ),
//     );
//   }
// }
