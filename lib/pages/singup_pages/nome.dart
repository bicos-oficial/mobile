import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_inputs/register-name-input.dart';
import 'package:bicos/pages/components/next-button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cpf.dart';

class NomeSobrenome extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BackAppBar.backAppBarNavigator(context),
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[RegisterNameInput.nameInput()],
            ),
          ),
        ),
        floatingActionButton:
            NextButton.floatingActionButton(_formkey, context, Cpf()));
  }
}
