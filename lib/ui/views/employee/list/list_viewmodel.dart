import 'package:app_quanlynhanvien/models/Employee.dart';
import 'package:app_quanlynhanvien/services/EmployeeService.dart';
import 'package:stacked/stacked.dart';

class EmployeeListViewModel extends BaseViewModel {
  List<Employee> _employees = new List<Employee>();
  EmployeeService _employeeService = new EmployeeService();

  List<Employee> get employees => _employees;
  getEmployees() async {
    _employees = await _employeeService.getEmployees();
  }
}
