import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_button/next-button.dart';
import 'package:bicos/pages/components/customize_inputs/password-input.dart';
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
                PasswordInput.passwordInput(controller: controllerPassword),
                SizedBox(
                  height: 25,
                ),
                PasswordInput.repeatPasswordInput(
                    controllerRepeatPassword, controllerPassword),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: NextButton(
          onPressed: () {
            if (_formkey.currentState.validate()) {
              openCepPage(context);
            }
          },
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
