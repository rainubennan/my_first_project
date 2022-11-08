import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Tabbar_demo(),debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch: Colors.lightGreen),));
}

class Tabbar_demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 3,
     child: Scaffold(
       appBar: AppBar(title: Text("First Tab"),
       actions: [
         Icon(Icons.search),
         PopupMenuButton(itemBuilder: (context){
           return[

             PopupMenuItem(child: Text("Settings"),),
             PopupMenuItem(child: Text("Menu"),),
             PopupMenuItem(child: Text("Help"),),

           ];
         })
       ],
       // backgroundColor: Color(),
       bottom: TabBar(
         tabs: [
           Tab(
             icon: Icon(Icons.home),
             text: "Home",
           ),
           Tab(
             icon: Icon(Icons.favorite_border),
             text: "Activities",
           ),
           Tab(
             icon: Icon(Icons.account_box),
             text: "Activities",
           ),
         ],
       ),),
       body: TabBarView(
         children: [
           // classname
           Center(
             child: Icon(Icons.home),
           ),
           Center(
             child: Icon(Icons.favorite_border),
           ),
           Center(
             child: Icon(Icons.account_box),
           ),
         ],
       ),




     ),
   );
  }

}