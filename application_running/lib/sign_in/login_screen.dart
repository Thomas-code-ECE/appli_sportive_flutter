import 'package:flutter/material.dart';
import 'components/bouton_form.dart';
import 'components/field_form.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  final bouton_submit = RoundedButton(
    color: const Color(0xFFFF6E40),
    textColor: Colors.black,
    text: "Soumettre",
    press: () => {},
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0E1),
      body: Column(
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
              ))
        ],
      ),
    );
  }
}
