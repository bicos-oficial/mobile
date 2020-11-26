import 'package:bicos/models/Endereco.dart';
import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_form/register-address-form.dart';
import 'package:bicos/pages/singup_pages/perfil-image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddressInformation extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  Endereco endereco = new Endereco();
  Usuario usuario = new Usuario();

  TextEditingController _ruaController,
      _bairroController,
      _cidadeController,
      _estadoController,
      _numeroController,
      _complementoController;

  AddressInformation(this.endereco, this.usuario);

  @override
  Widget build(BuildContext context) {
    _ruaController = new TextEditingController(text: endereco.rua);
    _bairroController = new TextEditingController(text: endereco.bairro);
    _cidadeController = new TextEditingController(text: endereco.cidade);
    _estadoController = new TextEditingController(text: endereco.estado);
    _numeroController = new TextEditingController();
    _complementoController = new TextEditingController();

    return Scaffold(
        appBar: BackAppBar.backAppBarNavigator(context),
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          child: Form(
              key: _formKey,
              child: RegisterAddressForm.formularioDeEndereco(endereco,
                  ruaController: _ruaController,
                  bairroController: _bairroController,
                  cidadeController: _cidadeController,
                  estadoController: _estadoController,
                  complementoController: _complementoController,
                  numeroController: _numeroController)),
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
    Endereco enderecoCompleto = new Endereco(
        rua: endereco.rua,
        bairro: endereco.bairro,
        cidade: endereco.cidade,
        estado: endereco.estado,
        cep: endereco.cep,
        numeroRua: int.parse(_numeroController.text),
        complemento: _complementoController.text);
    Usuario usuarioToPage = new Usuario(
        nome: usuario.nome,
        cpfOrCnpj: usuario.cpfOrCnpj,
        email: usuario.email,
        dataNascimento: usuario.dataNascimento,
        endereco: enderecoCompleto);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PerfilImage(usuarioToPage),
      ),
    );
  }
}
