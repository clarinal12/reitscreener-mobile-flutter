import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final Widget body;
  final Widget footer;

  @override
  CustomCard({this.title, this.subtitle, this.body, this.footer});

  Widget build(BuildContext context) {
    var newChildren = <Widget>[];

    if (this.title != null || this.subtitle != null) {
      if (this.title != null) {
        newChildren.add(this.title);
      }
      if (this.subtitle != null) {
        newChildren.add(this.subtitle);
      }
      newChildren.add(Divider());
    }

    if (this.body != null) {
      newChildren.add(this.body);
    }

    if (this.footer != null) {
      newChildren.add(Divider());
      newChildren.add(this.footer);
    }

    print(this.body);

    return Card(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: newChildren,
        ),
      ),
    );
  }
}
