import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';


void main(){
  runApp(MaterialApp(home: StaggeredGriddd(),
  debugShowCheckedModeBanner: false,));
}
class StaggeredGriddd extends StatelessWidget{
  final List<StaggeredTile> cardTile= const<StaggeredTile> [
    StaggeredTile.count(2,2),
    StaggeredTile.count(2,3),
    StaggeredTile.count(2,2),
    StaggeredTile.count(2,3),
    StaggeredTile.count(2,2),
    StaggeredTile.count(2,3),
    StaggeredTile.count(2,2),
    StaggeredTile.count(2,3),
  ];
final List<Widget> _listTile= <Widget>[
  Background_Tile(backgroundColor:Colors.blue,text:'hello'),
  Background_Tile(backgroundColor:Colors.red,text:'hello'),
  Background_Tile(backgroundColor:Colors.green,text:'hello'),
  Background_Tile(backgroundColor:Colors.purple,text:'hello'),
  Background_Tile(backgroundColor:Colors.brown,text:'hello'),
  Background_Tile(backgroundColor:Colors.indigo,text:'hello'),
  Background_Tile(backgroundColor:Colors.yellow,text:'hello'),
  Background_Tile(backgroundColor:Colors.blueGrey,text:'hello'),
];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child: StaggeredGridView.count(crossAxisCount: 4,
       staggeredTiles:cardTile,
       mainAxisSpacing: 4,
       crossAxisSpacing: 4,
       children: _listTile,),
     ),

   );
  }

}
class  Background_Tile extends StatelessWidget{
  final Color?  backgroundColor;
  // final IconData icondata;
  final text;
  Background_Tile({
    this.backgroundColor,this.text
});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Text(text),
    );
  }
}