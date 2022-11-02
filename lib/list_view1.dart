
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: List1(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch: Colors.teal),));
}

class List1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("MOVIES"),
      ),
      body: ListView(
        children: const [
          Card(
          child:ListTile(
            title: Text(
              "Avengers Endgame",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
            subtitle: Text("Action,Adventure,Fantasy"),
      trailing:Text("2019"),

            leading: CircleAvatar(
              radius:50,
              backgroundImage: NetworkImage(
                  "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg?region=0%2C0%2C540%2C810"),
          ),
            ),),
          Card(
          child:ListTile(
            title: Text(
              "Dora And The Lost City Of Gold",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
            trailing:Text("2019"),

            leading: CircleAvatar(
              radius:50,
              backgroundImage: NetworkImage(
                  "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/1a70a61a4eb45aa44fc2f9a80555db3dbb4f2f53bb1f5c5c161bf0ff0a1d3cf1._RI_V_TTW_.jpg"),
            ),
          ),
          ),
          Card(
          child:ListTile(
            title: Text(
              "UglyDolls",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
            subtitle: Text("Animation,Adventure,Comedy"),
            trailing:Text("2019"),

            leading: CircleAvatar(
              radius:50,
              backgroundImage: NetworkImage(
                  "https://m.media-amazon.com/images/M/MV5BMTc0NjE2ODM2OV5BMl5BanBnXkFtZTgwMjQyNDUzNzM@._V1_.jpg"),
            ),
          ),
          ),
          Card(
          child:ListTile(
            title: Text(
              "Captain Marvel",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
            subtitle: Text("Action,Adventure,Sci-Fi"),
            trailing:Text("2019"),

            leading: CircleAvatar(
              radius:50,
              backgroundImage: NetworkImage(
                  "https://static1.cbrimages.com/wordpress/wp-content/uploads/2019/08/Captain-Marvel-Brie-Larson-Marvel.jpg"),
            ),
          ),
          ),
          Card(
          child:ListTile(
            title: Text(
              "John Wick: Chapter 3-Parabellum",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
            subtitle: Text("Action,Thriller"),
            trailing:Text("2019"),

            leading: CircleAvatar(
              radius:50,
              backgroundImage: NetworkImage(
                  "data:image/png;base64,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"),
            ),
          ),),
          Card(
         child: ListTile(
            title: Text(
              "Us",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
            subtitle: Text("Horror,Thriller"),
            trailing:Text("2019"),

            leading: CircleAvatar(
              radius:50,
              backgroundImage: NetworkImage(
                  "https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/07/Why-Us%E2%80%99s-Tethered-are-Great-Movie-Monsters-feature.jpg"),
            ),
          ),
          ),
          Card(
           child:ListTile(
            title: Text(
              "Triple Threat",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
            subtitle: Text("Action,Thriller"),
            trailing:Text("2019"),

            leading: CircleAvatar(
              radius:50,
              backgroundImage: NetworkImage(
                  "https://m.media-amazon.com/images/M/MV5BODI5Y2UxYjAtZmEyNC00MmMyLTk2ODgtYWU3YTQ3MTA4ODFhXkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_.jpg"),
            ),
          ),
          ),
          Card(
    child:ListTile(
            title: Text(
              "Hellboy",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
            subtitle: Text("Ation,Adventure,Fantasy,Sci=Fi"),
            trailing:Text("2019"),

            leading: CircleAvatar(
              radius:50,
              backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/en/thumb/f/fc/Hellboy_%282019%29_theatrical_poster.png/220px-Hellboy_%282019%29_theatrical_poster.png"),
            ),
          ),
          ),


      ],),
    );
  }

}
