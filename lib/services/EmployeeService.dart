import 'package:app_quanlynhanvien/abstracts/AbstractEmployee.dart';
import 'package:app_quanlynhanvien/constants/db_table_const.dart';
import 'package:app_quanlynhanvien/models/Connection.dart';
import 'package:app_quanlynhanvien/models/Employee.dart';
import 'package:sqflite/sqflite.dart';

class EmployeeService with AbstractEmployee {
  Connection _context = Connection();
  @override
  Future<void> deleteEmployee(Employee e) {
    // TODO: implement deleteEmployee
    throw UnimplementedError();
  }

  @override
  Future<Employee> getEmployee(Employee e) {
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
            date: result[i]['date'],
            position: result[i]['position']));
  }

  @override
  Future<void> updateEmployee(Employee e) {
    // TODO: implement updateEmployee
    throw UnimplementedError();
  }
}
