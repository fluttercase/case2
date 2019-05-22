import 'package:flutter/material.dart';
import 'package:foodstore/RoundButton.dart';

class DetailFoodPage extends StatefulWidget {
  DetailFoodPage({Key key}) : super(key: key);

  _DetailFoodPageState createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage> {
  int number = 200;
  int foodNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFFC26617)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('French fries', style: TextStyle(color: Color(0xFFC26617), fontWeight: FontWeight.bold),),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset('assets/food.png'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Text('Wolf tooch French fries', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Icon(Icons.favorite_border, color: Colors.redAccent,)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(height: 4, color: Color(0xFFEF6C32),),
                ),
                _btn(200),
                Expanded(
                  child: Container(height: 4, color: Color(0xFFEF6C32),),
                ),
                _btn(400),
                Expanded(
                  child: Container(height: 4, color: Color(0xFFEF6C32),),
                ),
                _btn(600),
                Expanded(
                  child: Container(height: 4, color: Color(0xFFEF6C32),),
                ),
              ],
            ),
          ),
          FoodNumberButton(foodNumber: foodNumber,),
          SizedBox(height: 20,),
          Padding(
            child: Text('Redemption', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          SizedBox(height: 10,),
          Padding(
            child:Text('Spicy Rookie', style: TextStyle(color: Colors.grey),),
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: RoundedButton(onPress: (){
              Navigator.of(context).pushNamed('mycart');
            }, label: 'add to cart',),
          )
        ],
      ),
    );
  }
  Widget _btn (int _num) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              number = _num;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            width: 12, height: 12, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xFFEF6C32)
            ),
          ),
        ),
        Visibility(
          visible: number == _num,
          child: Positioned(
            bottom: -20,
            left: -10,
            child: Text('${_num}g', style: TextStyle(color: Color(0xFFEF6C32), fontWeight: FontWeight.bold),),
          ),
        )
      ],
    );
  }
}


class FoodNumberButton extends StatelessWidget {
  final int foodNumber;
  const FoodNumberButton({Key key, this.foodNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xaaEF6C32)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: Text('-', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('$foodNumber', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: Text('+', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  )
                ),
              ],
            ),
          ),
          Text('\$5.99', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}