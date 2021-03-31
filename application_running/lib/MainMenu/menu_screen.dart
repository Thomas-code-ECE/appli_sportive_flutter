import 'package:flutter/material.dart';
import '../course_chrono_screen/Course_chrono_screen.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  final logo_ece =
      Image.asset('assets/images/logo.png', height: 120, width: 120);
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      // resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF5F0E1),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: Column(
                  children: <Widget>[logo_ece],
                ),
              ),
            ),
            Card(
                margin: EdgeInsets.only(right: 20, left: 27),
                elevation: 12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                color: const Color(0xFF1E3D59),
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, right: 23, left: 20),
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 250,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: RaisedButton(
                            color: const Color(0xFFFF6E40),
                            child: Text(
                              "Course en solo",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 250,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CourseChrono()),
                              );
                            },
                            color: const Color(0xFFFF6E40),
                            child: Text(
                              "Course en duo",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 250,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: RaisedButton(
                            color: const Color(0xFFFF6E40),
                            child: Text(
                              "Course chronométrée",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 250,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: RaisedButton(
                            color: const Color(0xFFFF6E40),
                            child: Text(
                              "Statistique",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                )),
          ],
        ),
      ),
    );
  }
}
