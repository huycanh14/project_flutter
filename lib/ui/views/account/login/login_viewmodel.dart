import 'package:app_quanlynhanvien/app/router/router.gr.dart';
import 'package:app_quanlynhanvien/enums/EIconPass.dart';
import 'package:app_quanlynhanvien/models/Account.dart';
import 'package:app_quanlynhanvien/services/AccountService.dart';
import 'package:app_quanlynhanvien/ui/widgets/dialogs/warning.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  Account _account = new Account();
  AccountService _service = new AccountService();

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  Icon _iconPassword = Icon(Icons.visibility_off);
  EIconPass _icon = EIconPass.visibility_off;
  bool check = true;

  TextEditingController get username => _username;
  TextEditingController get password => _password;
  Icon get iconPassword => _iconPassword; //visibility_off
  Account get account => _account;

  String checkValidateUsername(value) {
    if (value.isEmpty) return "Tài khoản bạn đang để trống";
    return null;
  }

  String checkValidatePassword(value) {
    if (value.isEmpty) return "Password bạn đang để trống";
    return null;
  }

  signIn(BuildContext context) async {
    int result = await _service.signIn(username.text, password.text);
    if (result == 200) {
      Navigator.pushReplacementNamed(context, Routes.homeView);
    } else {
      return showDialog(
          context: context,
          builder: (BuildContext context) => WarningDialog(
              title: "Lỗi đăng nhập",
              message: "Thông tin đăng nhập chưa đúng"));
    }
  }

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
