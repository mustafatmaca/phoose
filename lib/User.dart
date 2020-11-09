import 'package:flutter/material.dart';

class User{

   int _id;
   String _userName;
   String _password;
   String _email;

   User(this._id, this._userName, this._password, this._email);

   String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get userName => _userName;

  set userName(String value) {
    _userName = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}