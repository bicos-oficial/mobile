import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_button/next-button.dart';
import 'package:bicos/pages/components/customize_inputs/name-input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cpf.dart';

// ignore: must_be_immutable
class NomeSobrenome extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController controller = new TextEditingController();

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
          builder: (context) => Cpf(Usuario(nome: controller.text)),
        ),
      );
    }

    return Scaffold(
        appBar: appBar,
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                NameInput.nameInput(controller,
                    labelFontSize: screenHeigth * .045)
              ],
            ),
          ),
        ),
        floatingActionButton: NextButton(onPressed: () {
          if (_formkey.currentState.validate()) {
            nextPage();
          }
        },)
    );
  }
}
