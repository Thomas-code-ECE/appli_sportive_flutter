import 'package:application_running/course_chrono_screen/Minuteur.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:percent_indicator/percent_indicator.dart';
import 'Minuteur.dart';

class Chrono extends StatefulWidget {
  @override
  _Chrono createState() => new _Chrono();
}

class _Chrono extends State<Chrono> {
  String _buttonText = "Start";
  String _stopwatchText = "00:00:00";
  final _stopWatch = new Stopwatch();
  final _timeout = const Duration(seconds: 1);

  void _startTimeout() {
    new Timer(_timeout, _handleTimeout);
  }

  void _handleTimeout() {
    if (_stopWatch.isRunning) {
      _startTimeout();
    }
    setState(() {
      _setStopwatchText();
    });
  }

  void _startStopButtonPressed() {
    setState(() {
      if (_stopWatch.isRunning) {
        _buttonText = "Start";
        _stopWatch.stop();
      } else {
        _buttonText = "Stop";
        _stopWatch.start();
        _startTimeout();
      }
    });
  }

  void _resetButtonPressed() {
    if (_stopWatch.isRunning) {
      _startStopButtonPressed();
    }
    setState(() {
      _stopWatch.reset();
      _setStopwatchText();
    });
  }

  void _setStopwatchText() {
    _stopwatchText = _stopWatch.elapsed.inHours.toString().padLeft(2, "0") +
        ":" +
        (_stopWatch.elapsed.inMinutes % 60).toString().padLeft(2, "0") +
        ":" +
        (_stopWatch.elapsed.inSeconds % 60).toString().padLeft(2, "0");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F0E1),
        body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 35),
                    width: 140,
                    height: 40,
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
                    width: 140,
                    height: 40,
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
                Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 32),
                    width: 70,
                    height: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: RaisedButton(
                        onPressed: _startStopButtonPressed,
                        color: const Color(0xFFFFC13B),
                        child: Text(
                          "Stop",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 10),
                    width: 140,
                    height: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: RaisedButton(
                        onPressed: _startStopButtonPressed,
                        color: const Color(0xFFFFC13B),
                        child: Text(
                          "Start",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 10),
                    width: 70,
                    height: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: RaisedButton(
                        onPressed: _resetButtonPressed,
                        color: const Color(0xFFFFC13B),
                        child: Text(
                          "Reset",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ]),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: CircularPercentIndicator(
                      percent: 0.0,
                      animation: true,
                      animateFromLastPercent: true,
                      radius: 250.0,
                      lineWidth: 20.0,
                      progressColor: Colors.white,
                      center: Text(_stopwatchText,
                          style: TextStyle(
                            fontSize: 40,
                          )),
                    ))
              ],
            )));
  }
}
