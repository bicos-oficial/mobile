import 'dart:io';

import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/singup_pages/password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class PerfilImage extends StatefulWidget {
  Usuario usuario = new Usuario();

  PerfilImage(this.usuario);

  @override
  State<PerfilImage> createState() {
    return PerfilImageWidgetState(usuario);
  }
}

class PerfilImageWidgetState extends State<PerfilImage> {
  final _formkey = GlobalKey<FormState>();
  Usuario usuario = new Usuario();

  PerfilImageWidgetState(this.usuario);

  File imagemTemporaria;
  File imagem;

  void pegarImagem() async {
    imagemTemporaria = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imagem = imagemTemporaria;
    });
  }

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
                Center(
                  child: Container(
                    width: 225,
                    height: 225,
                    alignment: Alignment(0, 1.15),
                    decoration: new BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 2),
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        image: imagem != null
                            ? FileImage(imagem)
                            : AssetImage("assets/user.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Container(
                      height: 56,
                      width: 56,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          stops: [0.3, 1.0],
                          colors: [
                            Color(0xFFF58524),
                            Color(0XFFF92B7F),
                          ],
                        ),
                        border: Border.all(
                          width: 4.0,
                          color: const Color(0xFFFFFFFF),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(56),
                        ),
                      ),
                      child: SizedBox.expand(
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          child: Icon(
                            Icons.photo_camera,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            pegarImagem();
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (_formkey.currentState.validate()) {
              navigateToPasswordPage(context);
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

  void navigateToPasswordPage(BuildContext context) {
    Usuario usuarioToPage = new Usuario(
        nome: usuario.nome,
        cpfOrCnpj: usuario.cpfOrCnpj,
        email: usuario.email,
        dataNascimento: usuario.dataNascimento,
        endereco: usuario.endereco,
        perfilImage: imagem);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Password(usuarioToPage),
      ),
    );
  }
}