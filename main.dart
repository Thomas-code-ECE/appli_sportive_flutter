import 'package:flutter/material.dart';
import 'package:menu/database_helper.dart';
import 'stats.dart';


void main() async{
  //Lance la BDD
  runApp(
    MaterialApp(
      title: "Statistiques",
      home: Stats()
    )
  );
}



