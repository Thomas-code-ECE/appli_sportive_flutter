import 'package:flutter/material.dart';


class Stats extends StatelessWidget {
  var distance = 5.6;
  var time = 25.51;
  var speed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment.center,
        color: const Color(0xFFF5F0E1),
        //margin: EdgeInsets.all(20.0),
        child:
            Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Text("Temps de course: ",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 20.0),
                        textAlign: TextAlign.center)
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text((time.toInt()).toString() + "min" + (time - time.toInt()).toString().substring(2,4) + "s",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 35.0),
                          textAlign: TextAlign.center),
                ),
                Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Text("Distance parcourue: ",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 20.0),
                        textAlign: TextAlign.center)
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                  child: Text(distance.toString(),
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 35.0),
                      textAlign: TextAlign.center),
                ),
                Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Text("Vitesse Moyenne: ",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 20.0),
                        textAlign: TextAlign.center)
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                  child: Text(((distance*60)/time).toString() + "\nkm/h ",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 35.0),
                      textAlign: TextAlign.center),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E3D59),
                      border: Border.all(
                          color: Colors.black,
                          width: 2),
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child: RaisedButton(
                      color: const Color(0xFF1E3D59),
                      child:
                      Text("Statistiques des amis !",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 20.0),
                        textAlign: TextAlign.center),
                      onPressed: () {},
                      ),
                    )
              ],
            ),
      )
    );
  }

  double Speed(double dist, double time){
    return (distance*60)/time;
  }
}


