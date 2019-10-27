import 'package:flutter/material.dart';

const primaryColor = Color(0xFFf0f8ff);
const accentColor = Color(0xFF3383ec);
const borderColor = Color.fromRGBO(0, 0, 0, 0.2);

final lightTheme = ThemeData(
  primaryColor: primaryColor,
  accentColor: accentColor,
  canvasColor: primaryColor,
  textTheme: TextTheme(
    headline: TextStyle(color: Colors.black),
    subhead: TextStyle(color: Colors.black),
    title: TextStyle(color: Colors.black),
    subtitle: TextStyle(color: Colors.black),
    body1: TextStyle(color: Colors.black),
    body2: TextStyle(color: Colors.black),
    caption: TextStyle(color: Colors.black54),
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    margin: EdgeInsets.all(20),
  ),
  dividerTheme: DividerThemeData(
    color: borderColor,
    space: 30.0,
  ),
);
