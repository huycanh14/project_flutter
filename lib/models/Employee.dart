import 'package:app_quanlynhanvien/enums/EGender.dart';
import 'package:app_quanlynhanvien/enums/EPosition.dart';

class Employee {
  String _name = "";
  Gender _gender = Gender.male;
  String _date = "";
  Position _position = Position.employee;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  Gender get gender => _gender;

  set gender(Gender value) {
    _gender = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  Position get position => _position;

  set position(Position value) {
    _position = value;
  }

  Employee() {
    this._date = new DateTime.now().toString();
  }

}
