import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  final isDark;

  @override
  Authentication({@required this.isDark});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            this.isDark
                ? Image.asset(
                    'lib/assets/images/reitscreener_logo_dark.png',
                    height: 60.0,
                    width: 273.0,
                  )
                : Image.asset(
                    'lib/assets/images/reitscreener_logo_light.png',
                    height: 60.0,
                    width: 273.0,
                  ),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              width: 273.0,
              child: LinearProgressIndicator(),
            ),
            SizedBox(height: 40),
            RaisedButton(
              child: Text('Go to login'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
