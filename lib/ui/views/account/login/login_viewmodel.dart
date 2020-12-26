import 'package:app_quanlynhanvien/enums/EIconPass.dart';
import 'package:app_quanlynhanvien/models/Account.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  Account _account = new Account();
  Account get account => _account;

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  Icon _iconPassword = Icon(Icons.visibility_off);
  EIconPass _icon = EIconPass.visibility_off;
  bool check = true;

  TextEditingController get username => _username;
  TextEditingController get password => _password;
  Icon get iconPassword => _iconPassword; //visibility_off

  String checkValidateUsername(value) {
    if (value.isEmpty) return "Tài khoản bạn đang để trống";
    return null;
  }

  String checkValidatePassword(value) {
    if (value.isEmpty) return "Password bạn đang để trống";
    return null;
  }

  signIn() {}
  void clickIconPassword() {
    if (_icon == EIconPass.visibility_off) {
      _icon = EIconPass.visibility;
      _iconPassword = Icon(Icons.visibility);
      check = false;
    } else {
      _icon = EIconPass.visibility_off;
      _iconPassword = Icon(Icons.visibility_off);
      check = true;
    }
  }
}
