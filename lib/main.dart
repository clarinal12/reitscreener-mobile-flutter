import 'package:flutter/material.dart';
import 'screens/authentication.dart';
import 'screens/login.dart';
import 'screens/main.dart';
import 'theme/dark.dart';
import 'theme/light.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppWidgetState createState() => _MyAppWidgetState();
}

class _MyAppWidgetState extends State<MyApp> {
  bool isDark = false;

  void _toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reitscreener',
      theme: isDark ? darkTheme : lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => Authentication(isDark: isDark),
        '/login': (context) => Login(isDark: isDark),
        '/main': (context) => Main(toggleTheme: _toggleTheme, isDark: isDark),
      },
    );
  }
}
