import 'package:app_quanlynhanvien/enums/EGender.dart';
import 'package:app_quanlynhanvien/enums/EPosition.dart';
import 'package:flutter/cupertino.dart';

class Employee {
  String _id = "";
  String _name = "";
  EGender _gender = EGender.male;
  String _date = "";
  EPosition _position = EPosition.employee;

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  EGender get gender => _gender;

  set gender(EGender value) {
    _gender = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  EPosition get position => _position;

  set position(EPosition value) {
    _position = value;
  }

  Employee() {
    this._date = new DateTime.now().toString();
  }

  Employee.widthFull(
      {@required String id,
      @required String name,
      @required bool gender,
      @required String date,
      @required int position}) {
    _id = id;
    _name = name;
    _gender = gender == true ? EGender.male : EGender.female;
    _date = date;
    switch (position) {
      case 0:
        _position = EPosition.director;
        break;
      case 1:
        _position = EPosition.deputy;
        break;
      case 2:
        _position = EPosition.manager;
        break;
      case 3:
        _position = EPosition.employee;
        break;
      default:
        _position = EPosition.trainee;
        break;
    }
  }

  void updateValue(
      {@required String name,
      @required bool gender,
      @required String date,
      @required int position}) {
    _name = name;
    _gender = gender == true ? EGender.male : EGender.female;
    _date = date;
    switch (position) {
      case 0:
        _position = EPosition.director;
        break;
      case 1:
        _position = EPosition.deputy;
        break;
      case 2:
        _position = EPosition.manager;
        break;
      case 3:
        _position = EPosition.employee;
        break;
      default:
        _position = EPosition.trainee;
        break;
    }
  }

  void updateFullValue(
      {@required String id,
      @required String name,
      @required bool gender,
      @required String date,
      @required int position}) {
    _id = id;
    _name = name;
    _gender = gender == true ? EGender.male : EGender.female;
    _date = date;
    switch (position) {
      case 0:
        _position = EPosition.director;
        break;
      case 1:
        _position = EPosition.deputy;
        break;
      case 2:
        _position = EPosition.manager;
        break;
      case 3:
        _position = EPosition.employee;
        break;
      default:
        _position = EPosition.trainee;
        break;
    }
  }

  Map<dynamic, dynamic> toMap() {
    var map = <dynamic, dynamic>{
      name: name,
      gender: gender,
      date: date,
      position: position
    };
    if (id != null) {
      map[id] = id;
    }
    return map;
  }

  Employee.fromMap(Map<dynamic, dynamic> map) {
    id = map[id];
    name = map[name];
    gender = map[gender];
    date = map[date];
    position = map[position];
  }
}
