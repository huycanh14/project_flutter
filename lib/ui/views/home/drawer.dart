import 'dart:core';

import 'package:app_quanlynhanvien/app/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          child: Image(image: AssetImage('images/man.png')),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        // ListTile(
        //   title: Text('Item 1'),
        //   onTap: () {
        //     // Update the state of the app
        //     // ...
        //     // Then close the drawer
        //     // Navigator.pop(context);
        //   },
        // ),
        ListTile(
          title: Text('Đăng xuất'),
          onTap: () async {
            SharedPreferences _prefs = await SharedPreferences.getInstance();
            _prefs.setString('accountData', null);
            Navigator.pushReplacementNamed(context, Routes.loginView);
          },
        ),
      ]),
    );
  }
}
