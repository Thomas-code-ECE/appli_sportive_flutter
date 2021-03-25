import 'dart:async';
import 'dart:core';

import 'package:menu/user.dart';
import "package:sqflite/sqflite.dart";
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:menu/course.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper;
  static Database _database;

  String courseTable = 'courseTable';
  String colIdCourse = 'idCourse';
  String colIdRunner = 'idRunner';
  String colDate = 'date';
  String colTime = 'time';
  String colDistance = 'distance';
  String colVitesse = 'vitesse';

  String userTable = 'userTable';
  String colIdUser = 'idCourse';
  String colFirstName = 'firstName';
  String colLastName = 'lastName';
  String colUsername = 'username';
  String colEmail = 'email';
  String colPassword = 'password';
  String colDistanceTot = 'distanceTot';
  String colTimeTot = 'timeTot';
  String colVitesseMoy = 'vitesseMoy';

  DatabaseHelper._createInstance();

  factory DatabaseHelper() {
    if(_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }

    return _databaseHelper;
  }

  Future<Database> get database async {
    if(_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'running.db';

    var courseDatabase = await openDatabase(path, version: 1, onCreate: _createDb);
    return courseDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute('CREATE TABLE $courseTable($colIdCourse INTEGER PRIMARY KEY AUTOINCREMENT,$colIdRunner INTEGER,'
        '$colDate TEXT,$colTime REAL, $colDistance REAL, $colVitesse REAL');
    await db.execute('CREATE TABLE $userTable($colIdUser INTEGER PRIMARY KEY AUTOINCREMENT,$colFirstName TEXT,'
        '$colLastName TEXT,$colUsername TEXT, $colEmail TEXT, $colPassword TEXT, $colDistanceTot REAL,'
        '$colTimeTot REAL,$colVitesseMoy REAL');
  }

  Future<List<Map<String,dynamic>>> getCourseList() async {
    Database db = await this.database;

    var result = await db.query(courseTable);
    return result;
  }

  Future<List<Map<String,dynamic>>> getUserList() async {
    Database db = await this.database;

    var result = await db.query(userTable);
    return result;
  }

  Future<int> insertCourse(Course course) async {
    Database db = await this.database;

    var result = await db.insert(courseTable, course.toMap());
    return result;
  }

  Future<int> insertUser(User user) async {
    Database db = await this.database;

    var result = await db.insert(userTable, user.toMap());
    return result;
  }

  Future<int> updateCourse(Course course) async {
    Database db = await this.database;

    var result = await db.update(courseTable, course.toMap(), where: "$colIdCourse", whereArgs: [course.id]);
    return result;
  }

  Future<int> updateUser(User user) async {
    Database db = await this.database;

    var result = await db.update(courseTable, user.toMap(), where: "$colIdUser", whereArgs: [user.id]);
    return result;
  }

  Future<int> deleteCourse(int id) async {
    Database db = await this.database;

    int result = await db.rawDelete('DELETE FROM $courseTable WHERE $colIdCourse = $id');
    return result;
  }

  Future<int> deleteUser(int id) async {
    Database db = await this.database;

    int result = await db.rawDelete('DELETE FROM $userTable WHERE $colIdUser = $id');
    return result;
  }

  Future<int> getCountCourse() async {
    Database db = await this.database;

    List<Map<String,dynamic>> x = await db.rawQuery('SELECT COUNT (*) FROM $courseTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

  Future<int> getCountUser() async {
    Database db = await this.database;

    List<Map<String,dynamic>> x = await db.rawQuery('SELECT COUNT (*) FROM $userTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }
}