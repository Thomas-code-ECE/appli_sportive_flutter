import 'dart:indexed_db';
import 'package:flutter/material.dart';

class BDD {
  Database db;

  Future<void> initDatabase() async {
    db = await OpenDatabase(
      join(await getDatabasePath()."app_running.db")
      onCreate: (db, Version){
        return db.excecute("
          DROP TABLE IF EXISTS `course`;
          CREATE TABLE IF NOT EXISTS `course` (
            `Id` int(11) NOT NULL AUTO_INCREMENT,
            `Id_runner` int(11) NOT NULL,
            `Name` varchar(30) NOT NULL,
            `Time` time NOT NULL,
            `Date` date NOT NULL,
            `Distance` int(11) NOT NULL,
            PRIMARY KEY (`Id`),
            KEY `fk_runner` (`Id_runner`)
          ) ENGINE=MyISAM DEFAULT CHARSET=latin1;


          DROP TABLE IF EXISTS `course_en_duo`;
          CREATE TABLE IF NOT EXISTS `course_en_duo` (
            `Id` int(11) NOT NULL AUTO_INCREMENT,
            `Id_runner1` int(11) NOT NULL,
            `Id_runner2` int(11) NOT NULL,
            `Name` int(11) NOT NULL,
            `Time` time NOT NULL,
            `Date` date NOT NULL,
            `Distance` int(11) NOT NULL,
            PRIMARY KEY (`Id`),
            KEY `fk_runner` (`Id_runner1`),
            KEY `fk_runner2` (`Id_runner2`)
          ) ENGINE=MyISAM DEFAULT CHARSET=latin1;


          DROP TABLE IF EXISTS `user`;
          CREATE TABLE IF NOT EXISTS `user` (
            `Id` int(11) NOT NULL AUTO_INCREMENT,
            `Username` varchar(30) NOT NULL,
            `Email` varchar(250) NOT NULL,
            `Password` varchar(20) NOT NULL,
            PRIMARY KEY (`Id`)
          ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
          COMMIT;
          ")
      }, Version =1
    );
  }
}
