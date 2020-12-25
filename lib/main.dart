import 'package:bicos/pages/login.page.dart';
import 'package:bicos/patterns/Colors.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bicos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          primaryColor: HexColor.fromHex(PatternsColors.primaryColor),
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white),
      home: LoginPage(),
    );
  }
}
