import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home"),),
        drawer: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.transparent,),
            child: Drawer(child: ListView(
              children: [
                UserAccountsDrawerHeader(accountName: Text("Olive Thomas"), accountEmail: Text("olivethomas@gmail.com"),
                  currentAccountPicture: GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9EWJXakOBhOQvhl8k0GCRsakU9RxV2m-qiQ&usqp=CAU"),),
                      onTap: ()=> print("Current user")),
                  otherAccountsPictures: [CircleAvatar(
                    backgroundImage: NetworkImage( "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_0.jpg"),),],
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(" "),
                        fit: BoxFit.cover),
                  ),),
                ListTile(
                    dense:true,
                    title: Text("Home Page"),
                    trailing: Icon(Icons.menu),
                    onTap: (){
                      Navigator.of(context).pop();
                      // Navigator.of(context).push(MaterialPageRoute(builder:( BuildContext context)=> OtherPage("Other Page"),));
                    }),
                ListTile(
                    dense:true,
                    title: Text("About Page"),
                    trailing: Icon(Icons.info),
                    onTap: (){
                      Navigator.of(context).pop();
                      // Navigator.of(context).push(MaterialPageRoute(builder:( BuildContext context)=> AboutPage("Other Page"),));
                    }),
                ListTile(
                    dense:true,
                    title: Text("Settings"),
                    trailing: Icon(Icons.menu),
                    onTap: (){
                      Navigator.of(context).pop();
                      // Navigator.of(context).push(MaterialPageRoute(builder:( BuildContext context)=> OtherPage("Settings "),
                      // ));
                    }),
                Divider(
                  thickness: 5.0,
                ),
                ListTile(
                  title: Text("Close"),
                  trailing: Icon(Icons.cancel),
                  onTap: ()=> Navigator.of(context).pop(),
                )
              ],
            ))));


  }
}