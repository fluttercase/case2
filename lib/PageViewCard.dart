import 'package:flutter/material.dart';
import 'package:foodstore/indicator.dart';

class PageViewCard extends StatefulWidget {
  PageViewCard({Key key}) : super(key: key);

  _PageViewCardState createState() => _PageViewCardState();
}

class _PageViewCardState extends State<PageViewCard> {
  PageController _pageCtrl;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageCtrl = PageController(initialPage: currentPageIndex, keepPage: true, viewportFraction: 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
              child: PageView.builder(
                controller: _pageCtrl,
                onPageChanged: (index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
                itemCount: 4,
                itemBuilder: (c, index) {
                  
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'detail');
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(color: Color(0x08000000), blurRadius: 20, spreadRadius: 0)],
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Image.asset('assets/food.png', fit: BoxFit.cover,),
                          ),
                          Text('Wolf tooch French fries', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),

                                child: Text('\$ 5.99', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                                decoration: BoxDecoration(
                                  color: Color(0xFF292929),
                                  borderRadius: BorderRadius.circular(30)
                                ),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){},
                                child: Container(
                                  width: 56,
                                  height: 56,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Color(0xFFEF6C32)
                                  ),
                                  child: Icon(Icons.add, color: Colors.white,),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 30,),
                        ],
                      ),
                    ),
                  );
                },
              ),
        ),
        IndicatorDot(selected: currentPageIndex, length: 4,),
      ],
    );
  }
}