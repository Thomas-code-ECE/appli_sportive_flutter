
import 'package:intl/intl.dart';

class Course {
  int _id;
  int _idRunner;
  String _date;
  double _time;
  double _distance;
  double _vitesse;

  Course(this._idRunner,this._date,this._time,this._distance,this._vitesse);
  Course.withId(this._id,this._idRunner,this._date,this._time,this._distance,this._vitesse);

  int get id => _id;
  int get idRunner => _idRunner;
  String get date => _date;
  double get time => _time;
  double get distance => _distance;
  double get vitesse => _vitesse;

  Map<String,dynamic> toMap() {
   var map = Map<String,dynamic>();
   if (id!=null) {
     map['id'] = _id;
   }
   map['idRunner'] = _idRunner;
   map['date'] = _date;
   map['time'] = _time;
   map['distance'] = _distance;
   map['vitesse'] = _vitesse;

   return map;
  }

  Course.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._idRunner = map['idRunner'];
    this._date = map['date'];
    this._time = map['time'];
    this._distance = map['distance'];
    this._vitesse = map['vitesse'];
  }
}