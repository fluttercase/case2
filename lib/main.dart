import 'package:flutter/material.dart';
import 'package:foodstore/indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'The Shy\'s Food'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selected = 1;
  PageController _pageCtrl;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageCtrl = PageController(initialPage: currentPageIndex, keepPage: true, viewportFraction: 0.9);
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title, style: TextStyle(color: Color(0xFFC26617), fontWeight: FontWeight.bold),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FoodButton(
                    icon: Icons.favorite_border,
                    selected: selected == 1,
                    onTap: () {
                      setState(() {
                        selected = 1;
                      });
                    },
                  ),
                  SizedBox(width: 20,),
                  FoodButton(
                    icon: Icons.wallpaper,
                    selected: selected == 2,
                    onTap: () {
                      setState(() {
                        selected = 2;
                      });
                    },
                  ),
                  SizedBox(width: 20,),
                  FoodButton(
                    icon: Icons.map,
                    selected: selected == 3,
                    onTap: () {
                      setState(() {
                        selected = 3;
                      });
                    },
                  ),
                  
                ],
              ),
            ),
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
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Color(0x08000000), blurRadius: 20, spreadRadius: 0)],
                      color: Colors.white
                    ),
                    child: Column(
                      children: <Widget>[
                        Text('Wolf tooch French fries')
                      ],
                    ),
                  );
                },
              ),
            ),
            IndicatorDot(selected: currentPageIndex, length: 4,),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width * .8,
              height: 50,
              child: RaisedButton(
                shape:  RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: Color(0xFFEF6C32),
                child: Text('My Cart', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                onPressed: (){},
              ),
            )
          ],
        ),
      )
    );
  }
}

typedef void OnFoodBtnTap();
class FoodButton extends StatelessWidget {
  final selected;
  final OnFoodBtnTap onTap;
  final IconData icon;
  const FoodButton({Key key,this.icon, this.onTap, this.selected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bcolor = Colors.white;
    var iconcolor = Colors.black;
    if (selected) {
      bcolor = Color(0xFFEF6C32);
      iconcolor = Colors.white;
    }
    return FloatingActionButton(
      backgroundColor: bcolor,
      child: Icon(icon, color: iconcolor,),
      onPressed: onTap,
    );
  }
}
