import 'package:app_quanlynhanvien/ui/views/employee/list/list_view.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Chào mừng bạn đã quay trở lại"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: EmployeeListView(),
            )
          ],
        ),
      ),
      drawer: DrawerView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => {}),
        tooltip: 'Thêm nhân viên',
        child: const Icon(Icons.add),
      ),
    );
  }
}
