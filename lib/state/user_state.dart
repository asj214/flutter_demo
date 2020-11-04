import 'package:flutter/material.dart';

class UserState extends ChangeNotifier {
  int _id;
  String _email = '';
  String _name = '';
  String _token = '';

  void setUser(dynamic user){
    _id = user['id'];
    _email = user['email'];
    _name = user['name'];
    
  }

  void setToken(String token){
    _token = token;
  }

  int get id => _id;
  String get email => _email;
  String get name => _name;
  String get token => _token;

}