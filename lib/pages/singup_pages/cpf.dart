import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_inputs/register-cpf-input.dart';
import 'package:bicos/pages/components/next-button.dart';
import 'package:flutter/material.dart';

import 'birth-date.dart';

// ignore: must_be_immutable
class Cpf extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String mask = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BackAppBar.backAppBarNavigator(context),
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          child: Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RegisterCpfInput.cpfInput(),
                ]),
          ),
        ),
        floatingActionButton:
            NextButton.floatingActionButton(_formKey, context, BirthDate()));
  }
}
