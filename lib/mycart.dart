import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  MyCart({Key key}) : super(key: key);

  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('my cart'),),
      body: Text('sd'),
    );
  }
}