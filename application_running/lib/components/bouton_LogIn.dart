import 'package:application_running/MainMenu/menu_screen.dart';
import 'package:flutter/material.dart';
import '../MainMenu/menu_screen.dart';

class RoundedButtonLogIn extends StatelessWidget {
  final String text;
  final Color color, textColor;
  const RoundedButtonLogIn({
    this.text,
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuScreen()),
            );
          },
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
