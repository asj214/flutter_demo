import 'package:flutter/material.dart';
import 'package:flutter_demo/profile/profile_view.dart';
import 'package:flutter_demo/login/login_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demo/state/user_state.dart';

class LeftDrawer extends StatefulWidget {
  @override
  _LeftDrawer createState() => _LeftDrawer();
}

class _LeftDrawer extends State<LeftDrawer> {

  Widget loginMenu(context){

    return Consumer<UserState>(builder: (context, state, child){

      if([0, null, ""].contains(state.id)){
        return ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Login', style: TextStyle(fontSize: 17)),
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage()
              )
            )
          },
        );
      } else {
        return ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Logout', style: TextStyle(fontSize: 17)),
          onTap: () => {
          },
        );
      }


    });

  }

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
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
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileView()
                )
              )
            },
          ),
          loginMenu(context),
        ]
      )
    );
  }
}
