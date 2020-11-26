import 'package:flutter/material.dart';

class RegisterPasswordInput {
  static TextFormField passwordInput(TextEditingController controller) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: 'Insira sua Senha',
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
        contentPadding: EdgeInsets.all(15),
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
      // autofocus: true,
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
        contentPadding: EdgeInsets.all(15),
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
