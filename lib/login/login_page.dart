import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_demo/state/user_state.dart';
import 'package:flutter_demo/constants.dart' as Constants;

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {

  final TextEditingController _emailController = TextEditingController(text: 'asj214@naver.com');
  final TextEditingController _passwordController = TextEditingController(text: '1234');

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // logo
            Container(
              margin: EdgeInsets.only(bottom: 70, left: 50, right: 50),
              child: Image(
                image:AssetImage('assets/images/flutter_logo.png')
              )
            ),

            // email
            Container(
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
              alignment: Alignment(0.0, 0.0),
              height: 45,
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(width: 1, color: Colors.black12)
              ),
              child: TextField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey)
                ),
                controller: _emailController,
                cursorColor: Colors.green
              ),
            ),

            // password
            Container(
              alignment: Alignment(0.0, 0.0),
              height: 45,
              margin: EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(width: 1, color: Colors.black12)
              ),
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey)
                ),
                controller: _passwordController,
                cursorColor: Colors.green
              ),
            ),

            // login button
            Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              width: MediaQuery.of(context).size.width,
              height: 43,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.green)
                ),
                color: Colors.green,
                child: Text('Login', style: TextStyle(color: Colors.white)),
                onPressed: () => _login(context)
              )
            )



          ],
        )
      )
      
    );

  }

  void _login(BuildContext context) async {

    String loginUrl = Constants.SERVER+'/api/user/login';
    var response = await http.post(
      loginUrl,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        'email': _emailController.text,
        'password': _passwordController.text
      })
    );

    Map<String, dynamic> data = jsonDecode(response.body);

    if(data['status'] != 200){
      return _showDialog(data['message']);
    }

    String url = Constants.SERVER+'/api/user/';
    response = await http.get(
      url,
      headers: {
        "accept": "*/*",
        "Content-Type": "application/json",
        "Authorization": "Bearer "+data['access_token'] 
      }
    );

    final UserState state = Provider.of<UserState>(context, listen: false);

    Map<String, dynamic> user = jsonDecode(response.body);

    state.setToken(data['access_token']);
    state.setUser(user);

    return _showDialog('Hello '+user['name']);

  }

  void _showDialog(msg) { 
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text("Alert Dialog title"),
          content: Text(msg),
          actions: <Widget>[ 
            FlatButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

}