import 'package:flutter/cupertino.dart';

class Account {
  String _id = "";
  String _username = "";
  String _password = "";

  String get username => _username;

  set username(String value) {
    _username = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get password => _password;

  void set password(String value) {
    _password = value;
  }

  Account();

  void updateValue({@required String username, @required String password}) {
    _username = username;
    _password = password;
  }

  void updateFullValue(
      {@required String id,
      @required String username,
      @required String password}) {
    _id = id;
    _username = username;
    _password = password;
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{username: username, password: password};
    if (id != null) {
      map[id] = id;
    }
    return map;
  }

  Account.fromMap(Map<String, dynamic> map) {
    id = map[id];
    username = map[username];
    password = map[password];
  }
}
