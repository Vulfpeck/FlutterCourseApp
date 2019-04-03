import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import "../../scoped-models/main.dart";

class LogoutListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant(
      builder: (BuildContext context, Widget widget, MainModel model) {
        return ListTile(
          title: Text('Logout'),
          leading: Icon(Icons.exit_to_app),
          onTap: () {
            model.logout();
          },
        );
      },
    );
  }
}