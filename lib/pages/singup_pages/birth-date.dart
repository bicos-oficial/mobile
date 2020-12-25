import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_button/next-button.dart';
import 'package:bicos/pages/components/customize_inputs/birth-date-input.dart';
import 'package:bicos/utils/parseUtils.dart';
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
    var appBar = BackAppBar.backAppBarNavigator(context);
    var size = MediaQuery.of(context).size;
    double screenHeigth = ((size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top);

    void nextPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Email(Usuario(
              nome: usuario.nome,
              cpfOrCnpj: usuario.cpfOrCnpj,
              dataNascimento: ParseUtils.parseStringToDate(controller.text))),
        ),
      );
    }

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
                  BirthDateInput.birthDateInput(
                      controller, labelFontSize: screenHeigth * .045),
                ]),
          ),
        ),
        floatingActionButton: NextButton(onPressed: () {
          if (_formKey.currentState.validate()) {
            nextPage();
          }
        },));
  }
}
