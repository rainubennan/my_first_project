import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(title: "First Page",
  initialRoute: '/',
  routes: {
    '/':(context)=> First_Page(),
    '/second':(context)=> Second_Page(),
    '/third':(context)=> Third_Page(),
  },));
}


class  First_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" First page"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(child: Text("to Second Page"),
                onPressed: (){
              Navigator.pushNamed(context, '/second');
                },),
            SizedBox(height: 50,),
            ElevatedButton(child: Text("to Third Page"),
              onPressed: (){
                Navigator.pushNamed(context, '/third');
              },),
          ],
        ),
      )

    );
  }

}
class  Second_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(" Second page"),),
        body: Center(
          child:
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                }, child: Text("To Third Page!!!"),)
          ),


    );
  }

}
class  Third_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Third page"),),
      body: Center(
        child:
        ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          }, child: Text("End!!!"),),
      ),


    );
  }

}

