// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(home: Grid_count()));
// }
//
// class Grid_count extends StatelessWidget {
//
//   var images = [
//
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//     "https://th.bing.com/th/id/OIP.97jl2SQWfxBJOyB32jSNxQHaEo?pid=ImgDet&rs=1",
//   ];
//
//   var text = [
//     "USA",
//     "ENGLAND",
//     "FRANCE",
//     "RUSSIA",
//     "CANADA"
//
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: GridView.count(
//           crossAxisCount: 2,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//           children: List.generate(5, (index) {
//             return Stack(
//
//               children:[ Row(
//                 children: const [
//                   // Image(image: NetworkImage(images[index]),),
//
//                 ],
//               ),]
//             );
//           }),
//         ));
//   }
// }