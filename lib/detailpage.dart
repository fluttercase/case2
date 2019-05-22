import 'package:flutter/material.dart';

class DetailFoodPage extends StatefulWidget {
  DetailFoodPage({Key key}) : super(key: key);

  _DetailFoodPageState createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('French fries', style: TextStyle(color: Color(0xFFC26617), fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: <Widget>[
          Text('sd')
        ],
      ),
    );
  }
}