import 'package:bicos/entity/Endereco.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_form/register-address-form.dart';
import 'package:bicos/pages/components/next-button.dart';
import 'package:bicos/pages/singup_pages/perfil-image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddressInformation extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  Endereco endereco = new Endereco();

  AddressInformation(this.endereco);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BackAppBar.backAppBarNavigator(context),
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          child: Form(
              key: _formKey, child: RegisterAddressForm.formularioDeEndereco(endereco)),
        ),
        floatingActionButton:
            NextButton.floatingActionButton(_formKey, context, PerfilImage()));
  }
}
