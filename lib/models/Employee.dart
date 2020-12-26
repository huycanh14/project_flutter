import 'package:app_quanlynhanvien/enums/EGender.dart';
import 'package:app_quanlynhanvien/enums/EPosition.dart';
import 'package:flutter/cupertino.dart';

class Employee {
  String _id = "";
  String _name = "";
  EGender _gender = EGender.male;
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

  EPosition get position => _position;

  set position(EPosition value) {
    _position = value;
  }

  Employee() {}

  Employee.widthFull(
      {@required int id,
      @required String name,
      @required int gender,
      @required int position}) {
    _id = id.toString();
    _name = name;
    _gender = gender == 0 ? EGender.male : EGender.female;

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
      @required EGender gender,
      @required EPosition position}) {
    _name = name;
    _gender = gender;
    _position = position;
  }

  void updateFullValue(
      {@required String id,
      @required String name,
      @required bool gender,
      @required int position}) {
    _id = id;
    _name = name;
    _gender = gender == true ? EGender.male : EGender.female;

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
    position = map[position];
  }
}
