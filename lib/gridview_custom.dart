import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Grid_Custom(),debugShowCheckedModeBanner: false,));
}
class Grid_Custom extends StatelessWidget{
  List<String> image=[
      "assets/images/frappe.png",
      "assets/images/bionic-eye.png",
      "assets/images/tools.png",
      "assets/images/img1.png",
    "assets/images/logo.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Grid Custom"),),
        body: GridView.custom(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            childrenDelegate: SliverChildBuilderDelegate(
                    (BuildContext, index) {
                  return Image.asset(image[index],
                      width:10,
                      height:10,
                      fit:BoxFit.fill,);
                  },
              childCount: 5,
            ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }

}