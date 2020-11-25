import 'package:flutter/material.dart';

class BackAppBar {
  // ignore: missing_return
  static AppBar backAppBarNavigator(BuildContext context) {
    return AppBar(
      title: const Text('Voltar'),
      backgroundColor: Colors.deepOrange,
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black38,
        onPressed: () => Navigator.pop(context, false),
      ),
    );
  }
}
