import 'package:flutter/material.dart';
import 'package:my_first_project/Internship/Application_Form.dart';
void main(){
  runApp(MaterialApp(home: (First()),
    debugShowCheckedModeBanner: false,),);
}
class First extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:const Text("CONTACT LIST"),
      ),
      body: ListView(
        children:  [
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
                "CONTACT LIST",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              )),
          SizedBox(
            height: 10,
          ),
          // Card(
          //   child:
        Card(child:  ListTile(
            title: Text( "Michael Lawson",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
            subtitle: Text("michael.lawson@reqres.in"),
            trailing: TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) =>Edit_Application() )); }, child: Text("Edit"),),
            //
            leading: CircleAvatar(
              radius:50,
              backgroundImage: NetworkImage("https://reqres.in/img/faces/7-image.jpg"),
            ),
          ),),
          // ),
          // Card(
          //   child:
          Card(
            child: ListTile(
              title: Text(
                "Lindsay Ferguson",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              subtitle: Text("lindsay.ferguson@reqres.in"),
              trailing: TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>Edit_Application() )); }, child: Text("Edit"),),
              // leading: Image.asset("name"),
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://reqres.in/img/faces/8-image.jpg"
                    ),
              ),
            ),
          ),

          // ),
          // Card(
          //   child:
         Card(child: ListTile(
            title: Text("Tobias Funke",
                style:
                TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
            subtitle: Text("tobias.funke@reqres.in"),
            trailing: TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) =>Edit_Application() )); }, child: Text("Edit"),),
              
                
            // leading: Image.asset("name"),
            leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://reqres.in/img/faces/9-image.jpg")),

          ),),
    Card(
      child: ListTile(
      title: Text("Byron Fields",
      style:
      TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
      subtitle: Text("byron.fields@reqres.in"),
        trailing: TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) =>Edit_Application() )); }, child: Text("Edit"),),
        leading: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                "https://reqres.in/img/faces/10-image.jpg")),

      ),
    ),
         Card(child: ListTile(
            title: Text("George Edwards",
                style:
                TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
            subtitle: Text("george.edwards@reqres.in"),
            trailing: TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>Edit_Application() ));  }, child: Text("Edit"),),
            leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://reqres.in/img/faces/11-image.jpg")),

          ),),
         
          Card(
            child: ListTile(
              title: Text("Rachel Howell",
                  style:
                  TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
              subtitle: Text("rachel.howell@reqres.in"),
              trailing: TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) =>Edit_Application() )); }, child: Text("Edit"),),
              leading: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://reqres.in/img/faces/12-image.jpg")),

            ),
          ),
          // ),
        ]
        ,
      )
      ,
    );
  }

}