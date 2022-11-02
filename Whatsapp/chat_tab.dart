import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Chat(),debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch:Colors.green)));
}
class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("CHATS",style: TextStyle(fontSize:25,fontWeight: FontWeight.w400),),
     ),
     body: ListView(
       children:  const [
         Card(
         child: ListTile(
           title: Text("Deepthi Bennan",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),),
           subtitle:Text( "Hello now I'm using Whatsapp",style:TextStyle(fontSize: 10,fontWeight: FontWeight.normal),),
           trailing:Text("10:30"),
           leading: CircleAvatar(
             radius: 75,
             backgroundImage:NetworkImage("https://images.unsplash.com/photo-1526495107727-0c4a173230c3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjBmbG93ZXJ8ZW58MHx8MHx8&w=1000&q=80"),
           ),
         ),
       ),
         Card(
           child: ListTile(
             title: Text("Aby",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),),
             subtitle:Text( "Hello There",style:TextStyle(fontSize: 10,fontWeight: FontWeight.normal),),
             trailing:Text("10:00"),
             leading: CircleAvatar(
               radius: 75,
               backgroundImage:NetworkImage("https://images.unsplash.com/photo-1526495107727-0c4a173230c3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjBmbG93ZXJ8ZW58MHx8MHx8&w=1000&q=80"),
             ),
           ),
         ),
         Card(
           child: ListTile(
             title: Text("Ancy",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),),
             subtitle:Text( "Peace",style:TextStyle(fontSize: 10,fontWeight: FontWeight.normal),),
             trailing:Text("09:30"),
             leading: CircleAvatar(
               radius: 75,
               backgroundImage:NetworkImage("https://images.unsplash.com/photo-1526495107727-0c4a173230c3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjBmbG93ZXJ8ZW58MHx8MHx8&w=1000&q=80"),
             ),
           ),
         ),
         Card(
           child: ListTile(
             title: Text("Jishnu A Kumar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),),
             subtitle:Text( "Busy",style:TextStyle(fontSize: 10,fontWeight: FontWeight.normal),),
             trailing:Text("09:00"),
             leading: CircleAvatar(
               radius: 75,
               backgroundImage:NetworkImage("https://images.unsplash.com/photo-1526495107727-0c4a173230c3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjBmbG93ZXJ8ZW58MHx8MHx8&w=1000&q=80"),
             ),
           ),
         )],
     ),
   );

  }

}