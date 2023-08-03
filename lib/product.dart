
import 'package:flutter/material.dart';
import 'package:animation_app/product.dart';


class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text("Products"),
    ),
    body: ListView.builder(
          itemCount: 7,
    itemBuilder: (context,index) {
      return Text("aushoais");
    }
    ),
    );
     
  }
}

