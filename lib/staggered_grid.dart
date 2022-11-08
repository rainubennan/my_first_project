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
  Background_Tile(backgroundColor:Colors.blue,icondata: Icons.ac_unit_outlined),
  Background_Tile(backgroundColor:Colors.red,icondata: Icons.safety_check_outlined),
  Background_Tile(backgroundColor:Colors.green,icondata: Icons.bolt),
  Background_Tile(backgroundColor:Colors.purple,icondata: Icons.accessibility),
  Background_Tile(backgroundColor:Colors.brown,icondata: Icons.account_balance),
  Background_Tile(backgroundColor:Colors.indigo,icondata: Icons.add_circle),
  Background_Tile(backgroundColor:Colors.yellow,icondata: Icons.add_alarm_sharp),
  Background_Tile(backgroundColor:Colors.blueGrey,icondata: Icons.add_chart),
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
  final IconData icondata;
  Background_Tile({
    this.backgroundColor,required this.icondata
});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(icondata, color: Colors.white),
    );
  }
}