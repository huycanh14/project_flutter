import 'package:flutter/material.dart';

class WarningDialog extends StatelessWidget {

  final String title;
  final String message;
  const WarningDialog({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(children: [
        Icon(Icons.warning, color: Colors.orange, size:30.0, ),
        Text('$title')
      ]),
      content: Text("$message"),
      actions: <Widget>[
        FlatButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}