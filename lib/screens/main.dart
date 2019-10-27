import 'package:flutter/material.dart';
import '../components/appDrawer.dart';
import '../components/card.dart';

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
            color: Theme.of(context).dividerTheme.color,
            height: 2.0,
          ),
          preferredSize: Size.fromHeight(4.0),
        ),
      ),
      drawer: AppDrawer(
        isDark: this.isDark,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
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
            child: Text('Go to authentication'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
