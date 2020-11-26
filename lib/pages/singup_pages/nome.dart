import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_inputs/register-name-input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cpf.dart';

// ignore: must_be_immutable
class NomeSobrenome extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController controller = new TextEditingController();

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
              children: <Widget>[RegisterNameInput.nameInput(controller)],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (_formkey.currentState.validate()) {
              openCpfPage(context);
            }
          },
          label: Text(
            "Próximo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          icon: Icon(Icons.navigate_next, size: 40),
          backgroundColor: Colors.deepOrange,
        ));
  }

  void openCpfPage(BuildContext context) {
    Usuario usuario = new Usuario(nome: controller.text);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Cpf(usuario),
      ),
    );
  }
}
