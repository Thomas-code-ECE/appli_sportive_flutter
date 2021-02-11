import 'package:flutter/material.dart';
import '../Register/Register_screen.dart';

class RoundedButtonSwitchToRegister extends StatelessWidget {
  final String text;
  final Color color, textColor;

  const RoundedButtonSwitchToRegister({
    this.text,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: RaisedButton(
          color: color,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterScreen()),
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
