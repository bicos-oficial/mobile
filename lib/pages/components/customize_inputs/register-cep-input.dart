import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterCepInput {
  static TextFormField cepInput(TextEditingController controller) {

    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.number,
      controller: controller,
      inputFormatters: [new MaskTextInputFormatter(mask: '#####-###')],
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: "Insira seu CEP",
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
        RegExp regExp = new RegExp('[0-9]{5}-[0-9]{3}');
        if (value.isEmpty) return 'Por favor insira seu cep';
        if (!regExp.hasMatch(value)) return 'O formato do CEP está incorreto';
      },
    );
  }
}
