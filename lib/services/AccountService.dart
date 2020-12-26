import 'package:app_quanlynhanvien/abstracts/AbstractAccount.dart';
import 'package:app_quanlynhanvien/constants/db_table_const.dart';
import 'package:app_quanlynhanvien/models/Account.dart';
import 'package:app_quanlynhanvien/models/Connection.dart';
import 'package:sqflite/sqflite.dart';

class AccountService with AbstractAccount {
  Connection _context = Connection();

  @override
  Future<int> signUp(Account account) async {
    try {
      Database _db = await _context.db;
      int _id = await _db.rawInsert(
          'INSERT INTO $TB_ACCOUNT(username, password) VALUES(?, ?)',
          [account.username, account.password]);
      _db.close();
      return _id > 0 ? 200 : 401;
    } on Exception catch (_) {
      return 401;
    }
  }

  @override
  Future<int> changePassword(Account a) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<int> signIn(String username, String password) {
    // TODO: implement signIn
    throw UnimplementedError();
  }
}
