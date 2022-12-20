import 'package:flutter/material.dart';

import '../bottom_navigation.dart';
void main (){
  runApp(MaterialApp(home: Ecommerce(),
  debugShowCheckedModeBanner: false,theme: ThemeData(primaryColor: Colors.white),));
}

class Ecommerce extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold( extendBody: true,
     backgroundColor: Colors.white,

     body:CustomScrollView(
       slivers: [
         SliverAppBar(
           pinned: true,
           backgroundColor: Colors.white,
           title: Container(
             width:500,
             height: 40,
             decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
                 color: Colors.blueGrey),
             child:  Center(
               child: TextField(
                 cursorColor: Colors.white,
                 decoration: InputDecoration(
                   hintText: 'Search Product',
                   prefixIcon: Icon(Icons.search,color: Colors.grey,),
                 ),
               ),
             ),),
           actions: const [
             CircleAvatar(child: Icon(Icons.shopping_cart,color: Colors.white,),backgroundColor: Colors.blueGrey,),
             CircleAvatar(child:  Icon(Icons.notifications,color: Colors.white,),backgroundColor: Colors.blueGrey,),

           ],
         ),

    SliverList(
      delegate: SliverChildListDelegate([
       Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      width: 500,
      height: 100,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.indigo,),
      child:Column(children: [
      Positioned(
      top: 15,
      child:Padding(
        padding: EdgeInsets.only(top: 8.0,right:50),
        child: Text("A Summer Special",
        style: TextStyle(
        fontSize: 20,
        color: Colors.white),
        textAlign: TextAlign.left,),
      )),
      Text("Cashback 20%",style: TextStyle(fontSize: 50,color: Colors.white),textAlign: TextAlign.left,)
      ],
      ),
      ),
      ),



    Padding(
      padding: const EdgeInsets.only(top:20,left:55),
      child: Row(
      children: [
      Column(
      children: [
      Container(
      width:80,
      height:80,
      color:Colors.orangeAccent,
        child: const Icon(Icons.flash_on,color: Colors.orange,),),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: const Text("Flash Deal"),
      ),
      ],
      ),
      const SizedBox(width:20 ,),
      Column(
      children: [
      Container(
      width:80,
      height:80,
        color:Colors.orangeAccent,child: Icon(Icons.list_alt,color: Colors.orange,),),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text("Bill"),
      ),
      ],
      ),
      SizedBox(width: 20,),
      Column(
      children: [
      Container(
      width:80,
      height:80,
        color:Colors.orangeAccent,child: Icon(Icons.games,color: Colors.orange,),),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text("Game"),
      ),
      ],
      ),
      SizedBox(width: 20,),
      Column(
      children: [
      Container(
      width:80,
      height:80,
        color:Colors.orangeAccent,child: Icon(Icons.card_giftcard,color: Colors.orange,),),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text("Daily Gift"),
      ),
      ],
      ),
      SizedBox(width: 20,
      ),
      Column(
      children: [
      Container(
      width:80,
      height:80,
        color:Colors.orangeAccent,child: Icon(Icons.more,color: Colors.orange,),),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text("More"),
      ),
      ],
      ),],
      ),
    ),

    Padding(
      padding: const EdgeInsets.only(top:35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Special for you ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          TextButton( onPressed: () {  }, child: const Text("See More",style: TextStyle(color: Colors.black),),
          ),],),),
        // SizedBox(
        //   height:5,
        // ),
     Row(
       children: [
         Container(
           height:100,
           width:225,
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
             image: DecorationImage(
                 image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFoZSKf7DWDFY4SGH2GlsFG846yBPrz72-MljwebFKckCGlubEkoyvw2rmPIOGbOPJoqo&usqp=CAU"),
                 fit: BoxFit.fill),
           ),
         child: Padding(
           padding: const EdgeInsets.only(left: 10,top:75),
           child: Text("Smart Phones",style: TextStyle(color: Colors.white),),
         ),),
         SizedBox(width: 25),


        Container(
          height:100,
          width:225,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEOwLAOzfXME6yZwPgNtOW_KEri5paOISvxA&usqp=CAU"),
                fit: BoxFit.fill),
          ),
        child: Padding(
          padding: const EdgeInsets.only(left:10,top: 75),
          child: Text("Fashion",style: TextStyle(color: Colors.white),),
        ),),
       ],
     ),

        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Popular Product ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              TextButton( onPressed: () {  }, child: const Text("See More",style: TextStyle(color: Colors.black),),
              ),],),),
        // SizedBox(
        //   height:5,
        // ),
        Row(
          children: [
            Container(
              height:100,
              width:225,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                    image: NetworkImage("https://images.express.com/is/image/expressfashion/0098_08944184_2096_c100?cache=on&wid=361&fmt=jpeg&qlt=75,1&resmode=sharp2&op_usm=1,1,5,0&defaultImage=Photo-Coming-Soon"),
                    fit: BoxFit.fill),


              ),),
        SizedBox(width: 25),

        Container(
          height:100,
          width:225,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
            image: const DecorationImage(
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoXGs-lvsZn1AAP2QnRB6kyM0kplzugqenmw&usqp=CAU"),
                fit: BoxFit.fill),


          ),),
          ],
        ),
        ],)
    ),],),

        bottomNavigationBar: Container(
          color: Colors.blueAccent,
       child:ClipRRect(
       borderRadius: const BorderRadius.only(
       topRight: Radius.circular(50),
    topLeft: Radius.circular(50)),
    child:
    BottomNavigationBar(
       items: const [
         BottomNavigationBarItem(
             icon: Icon(
               Icons.house_outlined,
               color: Colors.blue,
             ),
             label: 'Home'),
         BottomNavigationBarItem(
             icon: Icon(
               Icons.favorite_border,
               color: Colors.blueAccent,
             ),
             label: 'Favorite'),
         BottomNavigationBarItem(
             icon: Icon(
               Icons.chat_outlined,
               color: Colors.blue,
             ),
             label: 'Notification'),
         BottomNavigationBarItem(
             icon: Icon(
               Icons.person_outline,
               color: Colors.blue,
             ),
             label: 'Account')
       ],
     ),
   ),),);
  }

}