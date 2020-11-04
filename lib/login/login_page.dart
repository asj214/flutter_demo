import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {

  String email = '';
  String password = '';

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
                cursorColor: Colors.green,
                onChanged: (String value){
                  email = value;
                },
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
                cursorColor: Colors.green,
                onChanged: (String value){
                  password = value;
                }
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
                onPressed: (){
                  String msg = 'email: $email\npassword: $password';
                  return _showDialog(msg);
                }
              )
            )



          ],
        )
      )
      
    );

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