import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:validadores/ValidarCNPJ.dart';

class RegisterCnpjInput {
  static TextFormField cnpjInput() {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.number,
      inputFormatters: [
        new MaskTextInputFormatter(mask: '###.###.###/####-##')
      ],
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: "Insira seu CPF ou CNPJ",
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
        if (!CNPJ.isValid(value))
          return 'O CPF que você inseriu está incorreto';
      },
    );
  }
}
