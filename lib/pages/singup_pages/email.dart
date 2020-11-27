import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_inputs/register-email-input.dart';
import 'package:bicos/pages/singup_pages/cep.dart';
import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController controller = new TextEditingController();
  Usuario usuario = new Usuario();

  Email(this.usuario);

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
              children: <Widget>[RegisterEmailInput.emailInput(controller)],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (_formkey.currentState.validate()) {
              openCepPage(context);
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

  void openCepPage(BuildContext context) {
    Usuario usuarioToPage = new Usuario(
        nome: usuario.nome,
        cpfOrCnpj: usuario.cpfOrCnpj,
        dataNascimento: usuario.dataNascimento,
        email: controller.text);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Cep(usuarioToPage),
      ),
    );
  }
}
