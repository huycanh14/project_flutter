import 'package:app_quanlynhanvien/models/Employee.dart';

abstract class AbstractEmployee {
  Future<List<Employee>> getEmployees();
  Future<Employee> getEmployee(int id);
  Future<int> createEmployee(Employee e);
  Future<int> updateEmployee(Employee e);
  Future<int> deleteEmployee(Employee e);
}
