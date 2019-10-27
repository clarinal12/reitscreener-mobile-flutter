import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final isDark;

  @override
  AppDrawer({@required this.isDark});

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 100.0,
            child: DrawerHeader(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border(
                    bottom: BorderSide(
                        color: Theme.of(context).dividerTheme.color)),
              ),
              child: this.isDark
                  ? Image.asset(
                      'lib/assets/images/reitscreener_logo_dark.png',
                      height: 60.0,
                      width: 273.0,
                      alignment: AlignmentDirectional.centerStart,
                    )
                  : Image.asset(
                      'lib/assets/images/reitscreener_logo_light.png',
                      height: 60.0,
                      width: 273.0,
                      alignment: AlignmentDirectional.centerStart,
                    ),
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
