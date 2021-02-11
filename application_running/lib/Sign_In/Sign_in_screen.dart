import 'package:flutter/material.dart';
import '../components/bouton_form.dart';
import '../components/field_form.dart';
import '../components/boutton_GoToRegister.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  final bouton_login = RoundedButtonSubmit(
    color: const Color(0xFFFF6E40),
    textColor: Colors.black,
    text: "Se connecter",
    press: () => {},
  );
  final field_username = RoundedInputField(
    hintText: "Username ou Email",
    onChanged: (value) => {},
    icon: Icon(
      Icons.account_circle_outlined,
      color: const Color(0xFFF5F0E1),
    ),
  );
  final field_password = RoundedInputField(
    hintText: "Mot de passe",
    onChanged: (value) => {},
    icon: Icon(
      Icons.lock_outline_rounded,
      color: Colors.white,
    ),
  );
  final logo_ece =
      Image.asset('assets/images/logo.png', height: 120, width: 120);

  final bouton_inscription = RoundedButtonSwitchToRegister(
      text: "S'inscrire",
      color: const Color(0xFFFFC13B),
      textColor: Colors.black);
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
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, right: 35, left: 20),
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      field_username,
                      field_password,
                      bouton_login,
                    ],
                  )),
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0),
                child: Column(
                  children: <Widget>[bouton_inscription],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
