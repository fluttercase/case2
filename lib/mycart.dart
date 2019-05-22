import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  MyCart({Key key}) : super(key: key);

  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xFFC26617)),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            Text('My Cart', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Color(0x11000000), blurRadius: 10)]
                  ),
                  child: Image.asset('assets/food.png', width: 140,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('Wolf tooch', style: TextStyle(fontSize: 25, color: Colors.black , fontWeight: FontWeight.bold)),
                    SizedBox(height: 3),
                    Text('200 x1', style: TextStyle(fontSize: 25, color: Colors.grey),),
                    SizedBox(height: 5),
                    Text('\$ 5.99', style: TextStyle(fontSize: 25, color: Colors.grey))
                  ],
                )
              ],
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.yellow,
                child: Icon(Icons.add),
              ),
              onTap: (){},
            )
          ],
        ),
      ),
    );
  }
}