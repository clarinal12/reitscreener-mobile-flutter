import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  final toggleTheme;
  final isDark;

  @override
  Main({@required this.toggleTheme, @required this.isDark});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.threesixty),
            tooltip: 'Switch theme',
            onPressed: () {
              this.toggleTheme();
            },
          ),
        ],
        bottom: PreferredSize(
            child: Container(
              color: Theme.of(context).dividerColor,
              height: 2.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
      ),
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
            Text('Main Screen'),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Go to authentication'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
