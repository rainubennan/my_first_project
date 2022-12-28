import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home:Profile1() ,
    debugShowCheckedModeBanner: false,));
}
class Profile1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.menu),
        title: const Text("Profile"),
        centerTitle: true,
        actions: [
          Icon(Icons.more_horiz)
        ],
      ),
      body: Stack(
          children: [
            Image.network("data:image/jpeg;base64,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",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(padding: EdgeInsets.only(bottom:270),
                  child: MaterialButton(onPressed: (){},
                    elevation: 2,
                    color: Colors.red,
                    child: Icon(Icons.message,size: 27,),
                    padding: EdgeInsets.all(20),
                    shape: CircleBorder(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:150),
                  child:Column(
                      children: const [
                        CircleAvatar(
                          radius:60,
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                          backgroundColor: Colors.transparent,),
                        Text("Hendry David",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
                        Text("Model/Actor",style: TextStyle(color: Colors.green),),
                      ]),
                ),
                Padding(padding: const EdgeInsets.only(bottom: 275),
                  child: MaterialButton(onPressed: () {  },
                    elevation: 2,
                    color: Colors.blue,
                    child: Icon(Icons.add,size: 25,),
                    padding: EdgeInsets.all(20),
                    shape:CircleBorder() ,
                  ),
                ),],),]),);
  }

}