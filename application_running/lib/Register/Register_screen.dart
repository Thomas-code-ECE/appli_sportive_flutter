import 'package:application_running/Sign_In/Sign_in_screen.dart';
import 'package:flutter/material.dart';
import '../Sign_In/Sign_in_screen.dart';

FocusNode myFocusNode = new FocusNode();

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  var _formKey = GlobalKey<FormState>();
  final logo_ece =
      Image.asset('assets/images/logo.png', height: 120, width: 120);
  List<List<String>> users = [
    ["thomas.costa@edu.ece.fr", "toto", "mdp"],
    ["thomas.costa@hotmail.fr", "titi", "123"],
    ["jean.claude@edu.ece.fr", "tata", "oui"]
  ];
  void _submit() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => (SignInScreen())),
      );
    }
    _formKey.currentState.save();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      // resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF5F0E1),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: _formKey,
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
                          // *************************CHAMP USERNAME***********************************
                          Container(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: TextFormField(
                              validator: (value) {
                                for (var i = 0; i < users.length; i++) {
                                  if (users[i][1] == value) {
                                    return "Ce nom d'utilisateur est déjà prit";
                                  }
                                }
                                return null;
                              },
                              // onChanged: onChanged,
                              cursorColor: const Color(0xFFF5F0E1),
                              style: TextStyle(color: const Color(0xFFF5F0E1)),
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.white,
                                  ),
                                  labelText: "Username",
                                  labelStyle: TextStyle(
                                      color: myFocusNode.hasFocus
                                          ? const Color(0xFFF5F0E1)
                                          : const Color(0xFFF5F0E1)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(40)),
                                      borderSide: BorderSide(
                                          color: const Color(0xFFF5F0E1))),
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(40)),
                                    borderSide: new BorderSide(
                                        color: const Color(0xFFF5F0E1)),
                                  )),
                            ),
                          ),
                          // *************************CHAMP EMAIL***********************************
                          Container(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: TextFormField(
                              validator: (value) {
                                for (var i = 0; i < users.length; i++) {
                                  if (users[i][0] == value) {
                                    return "Cet email est déjà utilisé par un autre utilisateur";
                                  }
                                }
                                return null;
                              },
                              cursorColor: const Color(0xFFF5F0E1),
                              style: TextStyle(color: const Color(0xFFF5F0E1)),
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.alternate_email,
                                    color: Colors.white,
                                  ),
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                      color: myFocusNode.hasFocus
                                          ? const Color(0xFFF5F0E1)
                                          : const Color(0xFFF5F0E1)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(40)),
                                      borderSide: BorderSide(
                                          color: const Color(0xFFF5F0E1))),
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(40)),
                                    borderSide: new BorderSide(
                                        color: const Color(0xFFF5F0E1)),
                                  )),
                            ),
                          ),
                          // *************************CHAMP MOT DE PASSE***********************************
                          Container(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: TextFormField(
                                // validator: ,
                                // onChanged: onChanged,
                                cursorColor: const Color(0xFFF5F0E1),
                                style:
                                    TextStyle(color: const Color(0xFFF5F0E1)),
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock_outline_rounded,
                                    color: Colors.white,
                                  ),
                                  labelText: "Mot de passe",
                                  labelStyle: TextStyle(
                                      color: myFocusNode.hasFocus
                                          ? const Color(0xFFF5F0E1)
                                          : const Color(0xFFF5F0E1)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(40)),
                                      borderSide: BorderSide(
                                          color: const Color(0xFFF5F0E1))),
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(40)),
                                    borderSide: new BorderSide(
                                        color: const Color(0xFFF5F0E1)),
                                  ),
                                ),
                              )),
                          // *************************CHAMP BOUTTON GO TO SIGN IN***********************************
                          Container(
                            margin: EdgeInsets.only(top: 15, left: 25),
                            width: 180,
                            height: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: RaisedButton(
                                color: Colors.black,
                                onPressed: () {
                                  _submit();
                                },
                                child: Text(
                                  "Soumettre",
                                  style:
                                      TextStyle(color: const Color(0xFFFF6E40)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                    )),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 250,
                          height: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: RaisedButton(
                              color: const Color(0xFFFFC13B),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen()),
                                );
                              },
                              child: Text(
                                "Se connecter",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
