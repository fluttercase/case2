import 'package:flutter/material.dart';

class IndicatorDot extends StatefulWidget {
  final int selected;
  final int length;
  const IndicatorDot({Key key, this.selected = 0, this.length}) : super(key: key);

  _IndicatorDotState createState() => _IndicatorDotState();
}

class _IndicatorDotState extends State<IndicatorDot> with SingleTickerProviderStateMixin{
  // AnimationController _ctrl;
  // Animation<double> _ani;
  @override
  void initState() {
    super.initState();
    // _ctrl = AnimationController(vsync: this, duration: Duration(microseconds: 1000));
    // _ani = new Tween<double>(begin: 8.0, end: 20).animate(_ctrl)..addListener((){
    //   setState(() {
        
    //   });
    // });
  }
  @override
  Widget build(BuildContext context) {
    var list = List.generate(widget.length, (i) => i);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: list.map<Widget>((i){
          if (widget.selected == i) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              width: 20,
              height: 8,
              decoration: BoxDecoration(
                color: Color(0xFFEA003C),
                borderRadius: BorderRadius.circular(4)
              ),
            );
          }
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 6),
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(4)
            ),
          );
        }).toList(),
      ),
    );
  }
}
