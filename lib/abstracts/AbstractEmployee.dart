import 'package:app_quanlynhanvien/models/Employee.dart';

abstract class AbstractEmployee {
  Future<List<Employee>> getEmployees();
  Future<Employee> getEmployee(Employee e);
  Future<void> updateEmployee(Employee e);
  Future<void> deleteEmployee(Employee e);
}
