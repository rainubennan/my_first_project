import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Card_Ui(),));
}

class Card_Ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Card UI")),

          body: GridView(
    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing:5,
    mainAxisSpacing: 10,
    ),
    children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      // child: SizedBox(height: 25,width: 75,
          child: Container(height:25,width:75,color: Colors.purple,child: Icon(Icons.home,color: Colors.purpleAccent,),)),
    // ),
      const Padding(
        padding: EdgeInsets.all(8.0),
            child: SizedBox(height: 25,width: 75,
            child: Card(color: Colors.purple,elevation:10,child: Icon(Icons.shield,color: Colors.purpleAccent,),)),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
    child: SizedBox(height: 25,width: 75,
        child: Card(color: Colors.purple,elevation:10,child: Icon(Icons.language,color: Colors.purpleAccent,),)),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
    child: SizedBox(height: 25,width: 75,
        child: Card(color: Colors.purple,elevation:10,child: Icon(Icons.one_x_mobiledata,color: Colors.purpleAccent,),)),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
    child: SizedBox(height: 25,width: 75,
        child: Card(color: Colors.purple,elevation:10,child: Icon(Icons.palette_outlined,color: Colors.purpleAccent,),)),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
    child: SizedBox(height: 25,width: 75,
        child: Card(color: Colors.purple,elevation:10,child: Icon(Icons.home,color: Colors.purpleAccent,),)),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
    child: SizedBox(height: 25,width: 75,
        child: Card(color: Colors.purple,elevation:10,child: Icon(Icons.home,color: Colors.purpleAccent,),)),
      ),
    ],
    ),);
    }
    }