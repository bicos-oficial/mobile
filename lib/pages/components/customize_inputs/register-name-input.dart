import 'package:flutter/material.dart';

class RegisterNameInput {
  static TextFormField nameInput(TextEditingController controller) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.name,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: 'Insira seu nome Completo',
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
        if (value.isEmpty) return 'Este campo não pode ser vazio';
      },
    );
  }
}
