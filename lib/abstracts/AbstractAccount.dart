import 'package:app_quanlynhanvien/models/Account.dart';

abstract class AbstractAccount {
  Future<int> signIn(String username, String password);
  Future<int> changePassword(Account a);
  Future<int> signUp(Account a);
}
