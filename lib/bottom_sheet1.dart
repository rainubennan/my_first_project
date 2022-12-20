import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Bottom(),
  debugShowCheckedModeBanner: false,));
}

class Bottom extends StatelessWidget{
  void  _show (BuildContext context){
 showModalBottomSheet(
     isScrollControlled:true,
     elevation: 3,
     context: context,
     builder: (context)=> Container(
   padding: EdgeInsets.only(top: 15,
   left: 15,
   right: 15,
   bottom: MediaQuery.of(context).viewInsets.bottom + 100),
   child: Column(
     mainAxisSize: MainAxisSize.min,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       TextField(
         keyboardType: TextInputType.name,
         decoration: InputDecoration(labelText:'Name'),
       ),
       TextField(
         keyboardType: TextInputType.number,
         decoration: InputDecoration(labelText:'Age'),
       ),
       SizedBox(
         height: 10),
       ElevatedButton(onPressed:() {Navigator.of(context).pop();},
           child: Text('Submit'))


     ],
   ),
 ),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomSheet"),),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () =>
          _show(context),),
    );
  }

}

