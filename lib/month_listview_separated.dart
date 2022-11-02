import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Month_Listview(),
  debugShowCheckedModeBanner: false,
  ));
}

class Month_Listview extends StatelessWidget{
  var month=["January","February","March","April","May","June","July","August","September","October"];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
   body: ListView.separated(itemBuilder: (context, index){
     return Card(
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Text(month[index]),
     ),);
    }, separatorBuilder: ( context, int index) {
     return const Card(
         color:Colors.red,
         child:
          Text("Advertisement",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
    );

    }, itemCount: month.length,
   ),);
  }

}