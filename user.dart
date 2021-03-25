
import 'package:intl/intl.dart';

class User {
  int _id;
  String _firstName;
  String _lastName;
  String _username;
  String _email;
  String _password;
  double _distanceTot;
  double _timeTot;
  double _vitesseMoy;

  User(this._firstName,this._lastName,this._email,this._password,this._distanceTot,this._timeTot,this._vitesseMoy);
  User.withId(this._id,this._firstName,this._lastName,this._email,this._password,this._distanceTot,this._timeTot,this._vitesseMoy);

  int get id => _id;
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get email => _email;
  String get username => _username;
  String get password => _password;
  double get distanceTot => _distanceTot;
  double get timeTot => _timeTot;
  double get vitesseMoy => _vitesseMoy;

  Map<String,dynamic> toMap() {
   var map = Map<String,dynamic>();
   if (id!=null) {
     map['id'] = _id;
   }
   map['firstName'] = _firstName;
   map['lastName'] = _lastName;
   map['email'] = _email;
   map['username'] = _username;
   map['password'] = _password;
   map['distanceTot'] = _distanceTot;
   map['timeTot'] = _timeTot;
   map['vitesseMoy'] = _vitesseMoy;

   return map;
  }

  User.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._firstName = map['idRunner'];
    this._lastName = map['date'];
    this._username = map['username'];
    this._email = map['time'];
    this._password = map['distance'];
    this._distanceTot = map['timeTot'];
    this._timeTot = map['vitesseMoy'];
  }
}