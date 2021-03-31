import 'package:flutter/material.dart';
import 'dart:async';
import 'package:percent_indicator/percent_indicator.dart';
import 'Chrono.dart';
import 'Minuteur.dart';

class CourseChrono extends StatefulWidget {
  @override
  _CourseChrono createState() => new _CourseChrono();
}

class _CourseChrono extends State<CourseChrono> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F0E1),
        body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 200),
                  child: Text('Choisissez votre module',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 27),
                    width: 150,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chrono()),
                          );
                        },
                        color: const Color(0xFFFFC13B),
                        child: Text(
                          "Chronomètre",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 10),
                    width: 150,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Minuteur()),
                          );
                        },
                        color: const Color(0xFFFFC13B),
                        child: Text(
                          "Minuteur",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            )));
  }
}
