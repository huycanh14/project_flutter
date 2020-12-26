import 'package:app_quanlynhanvien/app/router/router.gr.dart';
import 'package:app_quanlynhanvien/ui/views/employee/list/list_view.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var load = 1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Danh sách nhân viên"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: EmployeeListView(load),
            )
          ],
        ),
      ),
      drawer: DrawerView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, Routes.employeeCreateView)
            .then((value) => {
                  setState(() {
                    load = 3;
                  })
                }),
        tooltip: 'Thêm nhân viên',
        child: const Icon(Icons.add),
      ),
    );
  }
}
