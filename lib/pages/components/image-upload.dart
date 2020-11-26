// ignore: avoid_web_libraries_in_flutter
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadPerfil {
  static Container imageUploadPerfil() {
    File imagem;

    void pegarImagem() async {
      await ImagePicker.pickImage(source: ImageSource.gallery)
          .then((value) => imagem = value);
    }

    return Container(
      width: 225,
      height: 225,
      alignment: Alignment(0, 1.15),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: imagem != null
              ? Image.file(imagem)
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
    );
  }
}
