import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class RegisterEmailInput {
  static TextFormField emailInput() {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.emailAddress,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: 'Insira seu Email',
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
        if (value.isEmpty) return 'Por favor insira seu e-mail';
        if (!EmailValidator.validate(value))
          return 'Formato de e-mail foge do padrão';
      },
    );
  }
}
