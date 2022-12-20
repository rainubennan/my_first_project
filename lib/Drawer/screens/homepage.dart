import 'package:flutter/material.dart';

import 'Aboutpage.dart';
import 'Otherpage.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Drawer"),
        ),
        drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
            ),
            child: Drawer(
                child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text("Olive Thomas",style: TextStyle(color: Colors.white),),
                  accountEmail: const Text("olivethomas@gmail.com",style: TextStyle(color: Colors.white),),
                  currentAccountPicture: GestureDetector(
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvjrlWYfcNpYAEH9wPRCC1a2VxnDe0xtZSEg&usqp=CAU"),
                      ),
                      onTap: () => print("Current user")),
                  otherAccountsPictures: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaY9NCY7uqhdrALyjkFvWyO2HYlmeeITwcJg&usqp=CAU"),
                    ),
                  ],
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWuNPiRrqxqgkyrMgACatNWi4puJdfsXLXRCh1cdP1BDopPgjkupz_sIOIPn9YFI800RE&usqp=CAU "), fit: BoxFit.cover),
                  ),
                ),
                ListTile(
                    dense: true,
                    title: const Text("Home Page"),
                    trailing: const Icon(Icons.menu),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            OtherPage("Home Page"),
                      ));
                    }),
                ListTile(
                    dense: true,
                    title: const Text("About Page"),
                    trailing: const Icon(Icons.info),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            AboutPage("About Page"),
                      ));
                    }),
                ListTile(
                    dense: true,
                    title: const Text("Settings"),
                    trailing: const Icon(Icons.settings),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            OtherPage("Settings "),
                      ));
                    }),
                const Divider(
                  thickness: 5.0,
                ),
                ListTile(
                  title: const Text("Close"),
                  trailing: const Icon(Icons.cancel),
                  onTap: () => Navigator.of(context).pop(),
                )
              ],
            ))));
  }
}