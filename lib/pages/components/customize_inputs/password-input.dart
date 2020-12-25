import 'package:flutter/material.dart';

class PasswordInput {
  static TextFormField passwordInput(
      {TextEditingController controller, String labelText}) {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: (labelText == null || labelText == '')
            ? 'Insira sua Senha'
            : labelText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 1),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange),
        ),
        labelStyle: TextStyle(
          color: Colors.deepOrange,
          fontWeight: FontWeight.w400,
          fontFamily: "Consolas",
          fontSize: 25,
        ),
        contentPadding: EdgeInsets.all(25),
      ),
      style: TextStyle(
        fontSize: 20,
      ),
      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) return 'Porfavor digite sua senha';
        if (value.length < 5) return 'O numero minimo de caracteres é 6';
      },
    );
  }

  static TextFormField repeatPasswordInput(TextEditingController controller,
      TextEditingController controllerOriginalPassword) {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: 'Repita sua Senha',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 1),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange),
        ),
        labelStyle: TextStyle(
          color: Colors.deepOrange,
          fontWeight: FontWeight.w400,
          fontFamily: "Consolas",
          fontSize: 25,
        ),
        contentPadding: EdgeInsets.all(25),
      ),
      style: TextStyle(
        fontSize: 20,
      ),
      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) return 'Não deixe este campo em branco';
        if (value != controllerOriginalPassword.text)
          return 'As senhas inseridas não coincidem';
      },
    );
  }
}
