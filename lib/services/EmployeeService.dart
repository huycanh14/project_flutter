import 'package:app_quanlynhanvien/abstracts/AbstractEmployee.dart';
import 'package:app_quanlynhanvien/constants/db_table_const.dart';
import 'package:app_quanlynhanvien/models/Connection.dart';
import 'package:app_quanlynhanvien/models/Employee.dart';
import 'package:sqflite/sqflite.dart';

class EmployeeService with AbstractEmployee {
  Connection _context = Connection();
  @override
  Future<int> deleteEmployee(Employee e) {
    // TODO: implement deleteEmployee
    throw UnimplementedError();
  }

  @override
  Future<Employee> getEmployee(int id) {
    // TODO: implement getEmployee
    throw UnimplementedError();
  }

  @override
  Future<List<Employee>> getEmployees() async {
    Database _db = await _context.db;
    List<Map<String, dynamic>> result =
        await _db.rawQuery("SELECT * FROM $TB_EMPLOYEE ORDER BY id DESC");
    return List.generate(
        result.length,
        (i) => Employee.widthFull(
            id: result[i]['id'],
            name: result[i]['name'],
            gender: result[i]['gender'],
            position: result[i]['position']));
  }

  @override
  Future<int> updateEmployee(Employee e) {
    // TODO: implement updateEmployee
    throw UnimplementedError();
  }

  @override
  Future<int> createEmployee(Employee e) async {
    try {
      Database _db = await _context.db;
      int _id = await _db.rawInsert(
          'INSERT INTO $TB_EMPLOYEE(name, gender, position) VALUES(?, ?, ?)',
          [e.name, e.gender, e.position]);
      _db.close();
      return _id > 0 ? 201 : 401;
    } on Exception catch (_) {
      return 401;
    }
  }
}
