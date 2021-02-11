import 'package:application_running/components/boutton_GoToSignIn.dart';
import 'package:flutter/material.dart';
import '../components/bouton_form.dart';
import '../components/field_form.dart';
import '../components/boutton_GoToSignIn.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  final bouton_submit = RoundedButtonSubmit(
    color: const Color(0xFFFF6E40),
    textColor: Colors.black,
    text: "Soumettre",
    press: () => {
      //   Navigator.push(
      //     MaterialPageRoute(builder: (context) => SecondRoute()),
      // );
    },
  );
  final field_username = RoundedInputField(
    hintText: "Username",
    onChanged: (value) => {},
    icon: Icon(
      Icons.account_circle_outlined,
      color: const Color(0xFFF5F0E1),
    ),
  );
  final field_email = RoundedInputField(
    hintText: "Email",
    onChanged: (value) => {},
    icon: Icon(
      Icons.alternate_email,
      color: Colors.white,
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

  final bouton_connexion = RoundedButtonSwitchToSignIn(
      text: 'Se connecter',
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
                      field_email,
                      field_password,
                      bouton_submit,
                    ],
                  )),
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0),
                child: Column(
                  children: <Widget>[bouton_connexion],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
