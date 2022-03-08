import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
  fontFamily: 'Georgia',
  splashColor: Colors.blueAccent,
  primaryColor: Colors.pink,


  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: Colors.pink,
  ).copyWith(
    secondary: Colors.green,
  ),

  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 25.0, color: Colors.blue, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 20.0, color: Colors.white, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 16.0, color: Colors.pinkAccent, fontStyle: FontStyle.italic),
    bodyText1: TextStyle(fontSize: 12.0, color: Colors.white, fontWeight: FontWeight.bold),
  ),

    inputDecorationTheme: const InputDecorationTheme (
      fillColor: Colors.lightBlueAccent,
      )
);