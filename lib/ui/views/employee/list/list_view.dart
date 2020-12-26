import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'list_viewmodel.dart';

class EmployeeListView extends StatefulWidget {
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
                  title: Text('item.buildTitle(context)'),
                  subtitle: Text('item.buildTitle(11)'),
                );
              },
            ));
  }
}
