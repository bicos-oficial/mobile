import 'package:bicos/patterns/Colors.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:flutter/material.dart';

class BackAppBar {
  static AppBar backAppBarNavigator(BuildContext context) {
    return AppBar(
      title: const Text('Voltar'),
      backgroundColor: HexColor.fromHex(PatternsColors.primaryColor),
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black38,
        onPressed: () => Navigator.pop(context, false),
      ),
    );
  }
}
