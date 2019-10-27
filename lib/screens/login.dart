import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final isDark;

  @override
  Login({@required this.isDark});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
            ),
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
              height: 30,
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [],
                ),
              ),
            ),
            RaisedButton(
              child: Text('Go to main'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/main');
              },
            ),
          ],
        ),
      ),
    );
  }
}
