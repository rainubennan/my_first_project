import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_View(),
    debugShowCheckedModeBanner: false,
  ));
}

class Grid_View extends StatelessWidget {
  var images = [
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Image.network(images[index]);
        },
        padding: EdgeInsets.all(20),
        shrinkWrap: true,
      ),
    );
  }
}
