import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Assgnmnt_Grid(),
  debugShowCheckedModeBanner: false,));
}

class Assgnmnt_Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myImageAndCaption = [
      ["assets/images/logo.jpg", "Text 0"],
      ["assets/images/tools.png", "Text 2"],
      ["assets/images/bionic-eye.png","Text 3"],
      ["assets/images/frappe.png", "Text 4"],
      ["assets/images/img1.png", "Text 5"],
      ["assets/images/mainscreen.png", "Text 6"],
      ["assets/images/mainscreen1.png", "Text 7"],
    ];
    return Scaffold(
    appBar: AppBar(  title: Text('Orientation Dmo',
    ),),
        body: GridView.count(
          crossAxisCount: 3,
          children: [
            ...myImageAndCaption.map(
                  (i) =>
                      Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Material(
                    shape: CircleBorder(),
                    elevation: 3.0,
                    child: Image.asset(i.first,
                      fit: BoxFit.fitWidth,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(i.last),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}