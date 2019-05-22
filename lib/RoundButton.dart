import 'package:flutter/material.dart';

typedef void OnPress();
class RoundedButton extends StatelessWidget {
  final OnPress onPress;
  final String label;
  const RoundedButton({Key key, this.onPress, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .8,
        height: 50,
        child: RaisedButton(
          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          color: Color(0xFFEF6C32),
          child: Text(label, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
          onPressed: onPress,
        ),
      );
  }
}