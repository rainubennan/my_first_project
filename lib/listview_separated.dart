
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListSeparator(),debugShowCheckedModeBanner: false,));
}

class ListSeparator extends StatelessWidget{
  var datas=<String>['Data 1','Data 2','Data 3'];
  var color =<int>[600,500,100];
  var sepcolor=[900,600,];
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: ListView.separated(
      itemBuilder: (context,index){
        return Card(
          color:Colors.indigo[color[index]],
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(datas[index]),
          )
        );
      }, separatorBuilder: (context, index){
        return Icon(Icons.accessibility_sharp,color: Colors.red[sepcolor[index]],);
  }, itemCount: datas.length),
);
  }
}