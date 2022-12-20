import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Checkbox_Listtile()));
}

class Checkbox_Listtile extends StatefulWidget{
  @override
  State<Checkbox_Listtile> createState() => _Checkbox_ListtileState();
}

class _Checkbox_ListtileState extends State<Checkbox_Listtile> {
  var image=["https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3AAndroid_robot.svg&psig=AOvVaw2FFyVSzuLZQ0GuUH03he4w&ust=1668138625902000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKCcmOTaovsCFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fflutter.dev%2Fbrand&psig=AOvVaw0D-PLv9jwKE4t-hASSUdf5&ust=1668138688442000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIDjmYLbovsCFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.g2.com%2Fproducts%2Fapple-ios%2Freviews&psig=AOvVaw0TffQ7bMotfMGQAU8CBM5Z&ust=1668138794622000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCODM-rTbovsCFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.php.net%2F&psig=AOvVaw1pv0M29R1_Wwa_65bCp2VL&ust=1668138828600000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCLiL8sTbovsCFQAAAAAdAAAAABAE",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Ffreebiesupply.com%2Flogos%2Fnode-js-logo%2F&psig=AOvVaw0TX3b1v63sspVOj3GpVn_l&ust=1668138882818000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCJiL7d7bovsCFQAAAAAdAAAAABAE"];
  var txt=["Android",
    "Flutter",
    "Php",
    "Node",
  "Dart"
  ];

    bool test = false;



  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   home: Scaffold(
     appBar: AppBar(

     title: const Text("CheckBox ListTile"),
     backgroundColor: Colors.blueGrey,
     ),
     body:ListView.builder(itemCount: 5,itemBuilder: (BuildContext context , int index)
  {
    return Column(
    children: [
      CheckboxListTile(
          checkColor: Colors.red,
          secondary: CircleAvatar(
            backgroundImage: NetworkImage(image[index]),
          ),
          title: Text(txt[index]),
          value: test, onChanged: (bool? value)
  {setState(() {
      test = value!;
    });
  })
    ],
    );
  }
    ),),);
  }
}