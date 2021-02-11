import 'package:flutter/material.dart';

class RoundedButtonSubmit extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButtonSubmit({
    this.text,
    this.press,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 15, left: 25),
      width: 180,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: RaisedButton(
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
