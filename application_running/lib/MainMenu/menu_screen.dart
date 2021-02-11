import 'package:flutter/material.dart';
import 'components/bouton_menu.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  final bouton_course_solo = RoundedButtonMenu(
    color: const Color(0xFFFF6E40),
    textColor: Colors.black,
    text: "Course en solo",
  );
  final bouton_course_duo = RoundedButtonMenu(
    color: const Color(0xFFFF6E40),
    textColor: Colors.black,
    text: "Course en duo",
  );
  final bouton_statistiques = RoundedButtonMenu(
    color: const Color(0xFFFF6E40),
    textColor: Colors.black,
    text: "Statistiques",
  );
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
                      bouton_course_solo,
                      bouton_course_duo,
                      bouton_statistiques,
                    ],
                  )),
                )),
          ],
        ),
      ),
    );
  }
}
