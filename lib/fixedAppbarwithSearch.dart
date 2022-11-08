import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: FixedAppbar(),
  debugShowCheckedModeBanner: false,));
}

class FixedAppbar extends StatefulWidget{
  @override
  State<FixedAppbar> createState() => _FixedAppbarState();
}

class _FixedAppbarState extends State<FixedAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("Custom App Bar"),
            actions: [
              IconButton(onPressed:(){}, icon: Icon(Icons.notifications),),
              IconButton(onPressed:(){}, icon: Icon(Icons.shopping_cart),),
              IconButton(onPressed:(){}, icon: Icon(Icons.favorite),)
            ],
            bottom: AppBar(title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search ",
                    prefix: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt)),
                  ),

                ),
              ),
            ),
          ),
          SliverList(
              delegate:SliverChildListDelegate(
            [
              SizedBox(
                height: 40,
                child: Center(
                  child: Text("Shopping Platform"),
                ),
              ),
              Container(
                height: 1000,
                color: Colors.purple,
              )
            ]
          ))
        ],
      ),
    );
  }
}