// import 'package:flutter/material.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
//
// void main(){
//   runApp(MaterialApp(home: Staggered_assignment(),
//     debugShowCheckedModeBanner: false,));
// }
// class Staggered_assignment extends StatelessWidget{
//   final List<StaggeredTile> _Tile= const<StaggeredTile> [
//     StaggeredTile.count(2,2),
//     StaggeredTile.count(2,3),
//     StaggeredTile.count(2,2),
//     StaggeredTile.count(2,3),
//     StaggeredTile.count(2,2),
//     StaggeredTile.count(2,3),
//     StaggeredTile.count(2,2),
//     StaggeredTile.count(2,3),
//   ];
//   final List<Widget> _dataTile= <Widget>[
//     Background_Tile(backgroundImage:NetworkImage(''),text:'hello'),
//     Background_Tile(backgroundImage:NetworkImage(''),text:'hello'),
//     Background_Tile(backgroundImage:NetworkImage(''),text:'hello'),
//     Background_Tile(backgroundImage:NetworkImage(''),text:'hello'),
//     Background_Tile(backgroundImage:NetworkImage(''),text:'hello'),
//     Background_Tile(backgroundImage:NetworkImage(''),text:'hello'),
//     Background_Tile(backgroundImage:NetworkImage(''),text:'hello'),
//     Background_Tile(backgroundImage:NetworkImage(''),text:'hello'),
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: StaggeredGridView.count(crossAxisCount: 4,
//           staggeredTiles:_Tile,
//           mainAxisSpacing: 4,
//           crossAxisSpacing: 4,
//           children: _dataTile,),
//       ),
//
//     );
//   }
//
// }
// class  Background_Tile extends StatelessWidget{
//   final Image?  backgroundImage;
//   final text;
//   Background_Tile({
//     this.backgroundImage,this.text
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//        Image.network(Image),
//          Text(text),
//         ]
//       ),
//     );
//   }
// }