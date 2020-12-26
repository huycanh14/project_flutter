import 'package:app_quanlynhanvien/models/Account.dart';

abstract class AbstractAccont {
  Future<void> login(String account, String password);
  Future<void>  changePassword(Account a);
}