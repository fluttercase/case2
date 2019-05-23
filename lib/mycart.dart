import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  MyCart({Key key}) : super(key: key);

  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 30, left: 30, right: 30 ),
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
                
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Material(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.yellow,
                    child: InkWell(
                      highlightColor: Colors.yellowAccent,
                      splashColor: Colors.yellowAccent,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        // color: Colors.yellow,
                        child: Icon(Icons.add, size: 26,),
                      ),
                      onTap: (){},
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Total:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('\$ 5.99', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  height: 2,
                  color: Colors.grey[300],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Material(
                        color: Color(0xFFFFC30D),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            height: 140,
                            child: Center(
                              child: Text('In store', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFEAEAEA),
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            height: 140,
                            child: Center(
                              child: Text('Pack', style: TextStyle(color: Color(0xFFC0C0C0), fontSize: 22, fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
                elevation: 0,
                iconTheme: IconThemeData(color: Color(0xFFC26617)),
                backgroundColor: Colors.transparent,
            ),
          ),
        ],
      )
    );
  }
}