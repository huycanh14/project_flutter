import 'package:app_quanlynhanvien/enums/EGender.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'list_viewmodel.dart';

class EmployeeListView extends StatefulWidget {
  EmployeeListView(int load);

  @override
  _EmployeeListViewState createState() => _EmployeeListViewState();
}

class _EmployeeListViewState extends State<EmployeeListView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmployeeListViewModel>.reactive(
        viewModelBuilder: () => EmployeeListViewModel(),
        onModelReady: (model) => model.getEmployees(),
        disposeViewModel: false,
        builder: (context, model, child) => ListView.builder(
              itemCount: model.employees.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(model.employees[index].name),
                  subtitle: Text(model.employees[index].gender == EGender.male
                      ? "male"
                      : "female"),
                );
              },
            ));
  }
}
