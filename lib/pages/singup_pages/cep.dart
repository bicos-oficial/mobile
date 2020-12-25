import 'package:bicos/controller/cep-service-consume.dart';
import 'package:bicos/models/Endereco.dart';
import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_button/next-button.dart';
import 'package:bicos/pages/components/customize_inputs/cep-input.dart';
import 'package:bicos/patterns/Colors.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'address-information.dart';

// ignore: must_be_immutable
class Cep extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String mask = '';
  TextEditingController controller = new TextEditingController();
  Endereco endereco = new Endereco();
  Usuario usuario = new Usuario();

  Cep(this.usuario);

  @override
  Widget build(BuildContext context) {
    var appBar = BackAppBar.backAppBarNavigator(context);
    var size = MediaQuery.of(context).size;
    double screenHeigth = ((size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top);

    void sendForm() {
      if (_formKey.currentState.validate()) {
        final String cep = controller.text;
        if (cep.isNotEmpty) {
          getEndereco(cep).then((value) => nextPage(context, value));
        }
      }
    }

    return Scaffold(
        appBar: appBar,
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          child: Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CepInput.cepInput(
                      controller, HexColor.fromHex(PatternsColors.primaryColor),
                      labelFontSize: screenHeigth * .045),
                ]),
          ),
        ),
        floatingActionButton: NextButton(onPressed: () {
          if (_formKey.currentState.validate()) {
            sendForm();
          }
        },)
    );
  }

  void nextPage(BuildContext context, Endereco cepInfo) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddressInformation(cepInfo, usuario),
      ),
    );
  }
}
