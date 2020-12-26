import 'package:app_quanlynhanvien/enums/EIconPass.dart';
import 'package:app_quanlynhanvien/models/Account.dart';
import 'package:app_quanlynhanvien/services/AccountService.dart';
import 'package:app_quanlynhanvien/ui/widgets/dialogs/success.dart';
import 'package:app_quanlynhanvien/ui/widgets/dialogs/warning.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RegistrationViewModel extends BaseViewModel {
  Account _account = new Account();
  AccountService _service = new AccountService();

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  Icon _iconPassword = Icon(Icons.visibility_off);
  EIconPass _icon = EIconPass.visibility_off;
  bool check = true;

  Account get account => _account;
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

  Future<void> signUp(BuildContext context) async {
    _account.updateValue(username: username.text, password: password.text);
    int result = await _service.signUp(_account);
    print(result);
    if (result == 200) {
      return showDialog(
          context: context,
          builder: (BuildContext context) => SuccessDialog(
              title: "Đăng ký thành công", message: "Bạn có thể đăng nhập"));
    } else {
      return showDialog(
          context: context,
          builder: (BuildContext context) => WarningDialog(
              title: "Lỗi đăng ký", message: "Có lỗi đăng ký xảy ra"));
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
