import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_inputs/register-cep-input.dart';
import 'package:bicos/pages/components/next-button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'address-information.dart';

// ignore: must_be_immutable
class Cep extends StatelessWidget {
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
                  RegisterCepInput.cepInput(),
                ]),
          ),
        ),
        floatingActionButton: NextButton.floatingActionButton(
            _formKey, context, AddressInformation()));
  }
}
