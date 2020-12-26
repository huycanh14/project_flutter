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
}