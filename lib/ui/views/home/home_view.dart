import 'package:flutter/material.dart';

import 'drawer.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chào mừng bạn đã quay trở lại"),
      ),
      body: Center(
        child: Text('My Page!'),
      ),
      drawer: DrawerView(),
    );
  }
}
