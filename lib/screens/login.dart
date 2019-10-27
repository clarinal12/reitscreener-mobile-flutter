import 'package:flutter/material.dart';
import '../components/card.dart';

class Login extends StatelessWidget {
  final isDark;

  @override
  Login({@required this.isDark});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
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
            CustomCard(
              title: Text(
                "Sample card Title",
                style: Theme.of(context).textTheme.title,
              ),
              subtitle: Text(
                "Sample card subtitle",
                style: Theme.of(context).textTheme.subtitle,
              ),
              body: Text(
                "Sample card body",
                style: Theme.of(context).textTheme.headline,
              ),
              footer: Text(
                "Sample card footer",
                style: Theme.of(context).textTheme.body1,
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
