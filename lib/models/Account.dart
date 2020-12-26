class Account {
  String _id = "";
  String _account = "";
  String _password = "";


  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get account => _account;

  void set account(String value) {
    _account = value;
  }

  String get password => _password;

  void set password(String value) {
    _password = value;
  }
}