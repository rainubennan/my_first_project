import 'package:flutter/material.dart';

import 'dummydata.dart';


class ProductListScreen1 extends StatelessWidget {
  // This function is triggered when the user tap on a product
  void _goToSingle(context, productId) {
    Navigator.of(context).pushNamed("single-product", arguments: productId);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List Screen"),
      ),
      body: GestureDetector(
        child: GridView(
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing:6,
            mainAxisSpacing:6,),
          children: dummyProducts1.map((Products) {
            return GestureDetector(
              child: Column(
                children: [
                   Text(Products["name"],),
                  ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}