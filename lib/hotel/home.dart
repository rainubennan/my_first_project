
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Hotel(),debugShowCheckedModeBanner: false,));
}

class Hotel extends StatefulWidget{
  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading:Container
         (
           width:double.infinity,
           height:500,
           child: Icon(Icons.menu)),
       actions: [
         Icon(Icons.favorite_border)
       ],
     ),
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           pinned: true,
           backgroundColor: Colors.white,
           title: Column(
             children: const [
               Padding(
                 padding: EdgeInsets.only(top:35),
                 child: Text("Type Your Location",style: TextStyle(color: Colors.blue),),
               ),
               SizedBox(height: 20,),
               TextField(
                 cursorColor: Colors.blue,
                 decoration: InputDecoration(
                   hintText: 'Search Product',
                   prefixIcon: Icon(Icons.search,color: Colors.grey,),
                 ),
               ),
             ],
           ),
         )
       ],
     ),
   );
  }
}