
import 'package:flutter/material.dart';
import 'package:my_first_project/passdata_assignment/product_list.dart';
import 'package:my_first_project/passdata_assignment/singlelist.dart';

void main() {
  runApp(Main());
}
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  ProductListScreen1(),
      routes: {
        "single-product": (context) =>  SingleProduct(),
      },
    );
  }
}
