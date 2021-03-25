import 'package:flutter/material.dart';
import 'package:application_running/MainMenu/menu_screen.dart';
import '../Register/Register_screen.dart';
import '../MainMenu/menu_screen.dart';

FocusNode myFocusNode = new FocusNode();

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  var _formKey = GlobalKey<FormState>();
  List<List<String>> users = [
    ["thomas.costa@edu.ece.fr", "toto", "mdp"],
    ["thomas.costa@hotmail.fr", "titi", "123"],
    ["jean.claude@edu.ece.fr", "tata", "oui"]
  ];
  var UsernameExist = 0;
  var EmailExist = 0;
  var positionInlist = 0;
  String email;
  String password;

  void _submit() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MenuScreen()),
      );
    }
    _formKey.currentState.save();
  }

  final logo_ece =
      Image.asset('assets/images/logo.png', height: 120, width: 120);

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
                          // *************************CHAMP EMAIL OU USERNAME***********************************
                          Container(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: TextFormField(
                              onFieldSubmitted: (value) {
                                //Validator
                              },
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Ce champ est vide';
                                } else {
                                  if (!value.contains('@')) {
                                    return "Votre email doit contenir un @";
                                  } else {
                                    if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                                    ).hasMatch(value)) {
                                      return "Veuillez saisir un Email valide";
                                    } else {
                                      for (var i = 0; i < users.length; i++) {
                                        if (users[i][0] == value) {
                                          EmailExist = 1;
                                          positionInlist = i;
                                        }
                                        if (users[i][1] == value) {
                                          UsernameExist = 1;
                                          positionInlist = i;
                                        }
                                      }
                                      if (EmailExist == 0) {
                                        return "Cet utilisateur n'existe pas";
                                      }
                                    }
                                  }
                                }
                                return null;
                              },
                              onSaved: (String value) {
                                email = value;
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
                          // *************************CHAMP PASSWORD***********************************
                          Container(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: TextFormField(
                                obscureText: true,
                                onFieldSubmitted: (value) {},
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Veuillez saisir un mot de passe valide';
                                  } else {
                                    if (EmailExist == 1 || UsernameExist == 1) {
                                      if (users[positionInlist][2] != value) {
                                        return 'Le mot de passe saisi est incorrect';
                                      }
                                    } else {
                                      EmailExist = 0;
                                      UsernameExist = 0;
                                    }
                                  }
                                  return null;
                                },
                                onSaved: (String value) {
                                  password = value;
                                },
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
                          // *************************CHAMP BOUTON LOGIN***********************************
                          Container(
                            margin: EdgeInsets.only(top: 15, left: 25),
                            width: 180,
                            height: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: RaisedButton(
                                color: const Color(0xFFFFC13B),
                                // onPressed: () {
                                //   if (_formkey.currentState.validate()) {
                                //     Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) => MenuScreen()),
                                //     );
                                //   }
                                // },
                                onPressed: () {
                                  _submit();
                                },
                                child: Text(
                                  "Se connecter",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                    )),
                // *************************CHAMP BOUTON GO TO REGISTER***********************************
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
                                      builder: (context) => RegisterScreen()),
                                );
                              },
                              child: Text(
                                "S'inscrire",
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
          ),
        ));
  }
}
