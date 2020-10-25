import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      DrawerHeader(
        child: Text(
          'Drawer',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        decoration: BoxDecoration(
          color: Colors.green,
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Welcome', style: TextStyle(fontSize: 17)),
        onTap: () => {},
      ),
      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text('Profile', style: TextStyle(fontSize: 17)),
        onTap: () => {},
      ),
    ]));
  }
}
