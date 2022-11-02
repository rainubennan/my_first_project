
import 'package:flutter/material.dart';
 void main(){
   runApp(MaterialApp(home: Bottom_Bar(),debugShowCheckedModeBanner: false,
   theme: ThemeData(primarySwatch: Colors.brown),));
 }
class Bottom_Bar extends StatefulWidget{

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {
   int selectindex=0;

   List body=const <Widget>[
     Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Home"),),color: Colors.brown,),
     Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Search"),),color: Colors.brown,),
     Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Activities"),),color: Colors.brown,),
     Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("Profile"),),color: Colors.brown,),
   ];
   void onitemtapped(int index){
     setState(() {
       selectindex=index;
     });
   }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title:Text("BottomBar"),
    ),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      backgroundColor: Colors.blue,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), label: "Home",backgroundColor:Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Search",backgroundColor:Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Activities",backgroundColor:Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile",backgroundColor:Colors.black),
        ],
      currentIndex: selectindex,
      onTap: onitemtapped,
      ),
      body: Center(
         child: body.elementAt(selectindex),
        // child: Card(
        //   child: Padding(
        //     padding: const EdgeInsets.all(50.0),
        //     child: Text("Welcome"),
        //   ),),),
  ),);
  }
}