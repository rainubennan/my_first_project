import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Bottom(),debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.brown),));
}
class Bottom extends StatefulWidget{

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int selectindex=0;

  List body=const <Widget>[
    Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("CHATS"),),color: Colors.green,),
    Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("STATUS"),),color: Colors.green,),
    Card(child:Padding(padding: EdgeInsets.all(50.0),child: Text("CALLS"),),color: Colors.green,),
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