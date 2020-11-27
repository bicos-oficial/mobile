import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_inputs/register-birth-date-input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'email.dart';

// ignore: must_be_immutable
class BirthDate extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController controller = new TextEditingController();
  Usuario usuario = new Usuario();

  BirthDate(this.usuario);

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
                  RegisterBirthDateInput.birthDateInput(controller),
                ]),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (_formKey.currentState.validate()) {
              openEmailPage(context);
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

  static DateTime _parseStringToDate(String value) {
    int _dia = int.parse(value.substring(0, 2));
    int _mes = int.parse(value.substring(3, 5));
    int _ano = int.parse(value.substring(6, 10));

    DateTime dataDeNascimeto = new DateTime(_ano, _mes, _dia);
    return dataDeNascimeto;
  }

  void openEmailPage(BuildContext context) {
    Usuario usuarioToPage = new Usuario(
        nome: usuario.nome,
        cpfOrCnpj: usuario.cpfOrCnpj,
        dataNascimento: _parseStringToDate(controller.text));

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Email(usuarioToPage),
      ),
    );
  }
}
