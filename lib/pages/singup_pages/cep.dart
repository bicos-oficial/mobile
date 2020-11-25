import 'package:bicos/entity/Endereco.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_inputs/register-cep-input.dart';
import 'package:bicos/service/cep-service-consume.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'address-information.dart';

// ignore: must_be_immutable
class Cep extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String mask = '';
  TextEditingController _controller = new TextEditingController();
  Endereco endereco = new Endereco();

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
                RegisterCepInput.cepInput(_controller),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _sendForm(context);
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
      ),
    );
  }

  void _sendForm(BuildContext context) {
    if (_formKey.currentState.validate()) {
      final String cep = _controller.text;
      if (cep.isNotEmpty) {
        getEndereco(cep).then((value) => openWeatherInfo(value, context));
      }
    }
  }

  void openWeatherInfo(Endereco cepInfo, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddressInformation(cepInfo),
      ),
    );
  }
}
