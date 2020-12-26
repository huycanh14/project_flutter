import 'package:app_quanlynhanvien/enums/EGender.dart';
import 'package:app_quanlynhanvien/enums/EPosition.dart';
import 'package:app_quanlynhanvien/models/Employee.dart';
import 'package:app_quanlynhanvien/services/EmployeeService.dart';
import 'package:app_quanlynhanvien/ui/widgets/dialogs/success.dart';
import 'package:app_quanlynhanvien/ui/widgets/dialogs/warning.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmployeeCreateViewModel extends BaseViewModel {
  Employee _employee = new Employee();
  EmployeeService _service = new EmployeeService();
  TextEditingController name = TextEditingController();
  EGender gender = EGender.male;
  EPosition position = EPosition.trainee;
  EPosition po = EPosition.trainee;

  Employee get employee => _employee;

  String checkValidate(value) {
    if (value.isEmpty) return "Bạn đang để trống";
    return null;
  }

  createEmployee(BuildContext context) async {
    _employee.updateValue(name: name.text, gender: gender, position: position);
    int result = await _service.createEmployee(_employee);
    if (result == 201) {
      return showDialog(
          context: context,
          builder: (BuildContext context) => SuccessDialog(
              title: "Thêm thành công", message: "Thêm nhân viên thành công"));
    } else {
      return showDialog(
          context: context,
          builder: (BuildContext context) => WarningDialog(
              title: "Thêm thất bại", message: "Thêm nhân viên bị lỗi"));
    }
  }
}
