import 'package:flutter/material.dart';

class Grid_Count extends StatelessWidget{
  var images = [
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
  ];
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: GridView.count(crossAxisCount: 3,mainAxisSpacing: 20,crossAxisSpacing: 5,
  children: List.generate(20,
          (index){
    return Card(

      child:Image(image: NetworkImage(images[index]),),
    );}
  ),),
);
  }

}