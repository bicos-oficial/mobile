import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_inputs/register-cpf-input.dart';
import 'package:flutter/material.dart';

import 'birth-date.dart';

// ignore: must_be_immutable
class Cpf extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController controller = new TextEditingController();
  Usuario usuario = new Usuario();

  Cpf(this.usuario);

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
                  RegisterCpfInput.cpfInput(controller),
                ]),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (_formKey.currentState.validate()) {
              openBirthDatePage(context);
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

  void openBirthDatePage(BuildContext context) {
    Usuario usuarioToPage =
        new Usuario(nome: usuario.nome, cpfOrCnpj: controller.text);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BirthDate(usuarioToPage),
      ),
    );
  }
}
