import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_inputs/register-password-input.dart';
import 'package:bicos/service/UsuarioService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Password extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerRepeatPassword = new TextEditingController();
  Usuario usuario = new Usuario();

  Password(this.usuario);

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
              children: <Widget>[
                RegisterPasswordInput.passwordInput(controllerPassword),
                SizedBox(
                  height: 25,
                ),
                RegisterPasswordInput.repeatPasswordInput(
                    controllerRepeatPassword, controllerPassword),
                SizedBox(
                  height: 35,
                ),
              ],
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
            "Finalizar Cadastro",
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
        email: usuario.email,
        endereco: usuario.endereco,
        perfilImage: usuario.perfilImage,
        password: controllerPassword.text);

    UsuarioService service = new UsuarioService();
    service.cadastrarUsuario(usuarioToPage);
  }
}
