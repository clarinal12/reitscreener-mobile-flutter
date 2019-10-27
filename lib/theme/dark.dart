import 'package:flutter/material.dart';

const primaryColor = Color(0xFF030b13);
const accentColor = Color(0xFF3383ec);
const borderColor = Color.fromRGBO(255, 255, 255, 0.2);

final darkTheme = ThemeData(
  primaryColor: primaryColor,
  accentColor: accentColor,
  canvasColor: primaryColor,
  textTheme: TextTheme(
    headline: TextStyle(color: Colors.white),
    subhead: TextStyle(color: Colors.white),
    title: TextStyle(color: Colors.white),
    subtitle: TextStyle(color: Colors.white),
    body1: TextStyle(color: Colors.white),
    body2: TextStyle(color: Colors.white),
    caption: TextStyle(color: Colors.white60),
  ),
  cardTheme: CardTheme(
    color: Color(0xFF0d161b),
    margin: EdgeInsets.all(20),
  ),
  dividerTheme: DividerThemeData(
    color: borderColor,
    space: 30.0,
  ),
);
