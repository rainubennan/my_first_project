import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("List Page"),
    ),

    body:ListView(
    children: [
      const SizedBox(height: 20,),
    const Center(
    child: Text("List of ",style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),)),

    ListTile(
    title: const Text("Fruit1"),
    subtitle: const Text("Fruit is yummy"),
    leading: Image.asset("name"),
    trailing: const Icon(Icons.navigate_next),
    ),

    const SizedBox(height: 20,),
    ListTile(
    title: const Text("Fruit2"),
    subtitle: const Text("Fruit is yummy"),
    leading: Image.asset("name"),
    trailing: const Icon(Icons.navigate_next),
    ),

    const SizedBox(height: 20,),
    const ListTile(
    title: Text("Fruit3"),
    subtitle: Text("Fruit is yummy"),
     // leading: Image.asset("name"),
    leading: CircleAvatar(backgroundImage: NetworkImage("name")),
    trailing: Icon(Icons.navigate_next),
    ),
    ],
    ),);



  }
}
