import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main(){
  runApp(MaterialApp(home: Log_in(),
  debugShowCheckedModeBanner: false,));
}

class Log_in extends StatelessWidget{
  bool view=true;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body: Column(crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         const Center(child: Text("LOGIN PAGE",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),)),

     // const Padding(
     //   padding: EdgeInsets.all(10.0),
     //   child: Text("ENTER YOUR USERNAME",
     //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
     // ),


       const Padding(
         padding: EdgeInsets.only(top:10,left: 10,right: 10,bottom: 5),
         child: TextField(
           decoration: InputDecoration(
               label: Text("Username"),
               suffixIcon: Icon(Icons.account_box),
               hintText: "Email / Phone Number",
               border: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(5)))),

         ),
       ),

         // const Padding(
         //   padding: EdgeInsets.all(10.0),
         //   child: Text("ENTER YOUR PASSWORD",
         //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
         // ),


         const Padding(
           padding: EdgeInsets.only(top:10,left: 10,right: 10,bottom: 5),
           child: TextField(
             // obscuringCharacter: "*",
             // obscureText:view ,
             decoration: InputDecoration(
                 label: Text("Password"),
                 hintText: "Enter your password",
                 suffixIcon: Icon(Icons.visibility_off),
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(5)))),
           ),
         ),

         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Center(child: ElevatedButton(onPressed: (){
             Fluttertoast.showToast(
                 msg: "Successful",
                 toastLength: Toast.LENGTH_SHORT,
                 gravity: ToastGravity.BOTTOM,
                 backgroundColor: Colors.red,
                 textColor: Colors.white,
                 fontSize: 16.0
             );
           }, child: Text("LOGIN"))),
         ),
        Center(child: TextButton(onPressed: (){}, child: Text("Not a User? Register Here!!")))
       ],
     ),
   );
  }

}