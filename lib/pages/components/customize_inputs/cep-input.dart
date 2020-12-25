import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CepInput {
  static TextFormField cepInput(TextEditingController controller, Color color,
      {double labelFontSize}) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.number,
      controller: controller,
      inputFormatters: [new MaskTextInputFormatter(mask: '#####-###')],
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: "Insira seu CEP",
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color, width: 1),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color),
        ),
        labelStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontFamily: "Consolas",
          fontSize: (labelFontSize == null || labelFontSize == 0)
              ? 25
              : labelFontSize,
        ),
        contentPadding: EdgeInsets.all(25),
      ),
      style: TextStyle(
        fontSize: 20,
      ),
      // ignore: missing_return
      validator: (value) {
        try {
          RegExp regExp = new RegExp('[0-9]{5}-[0-9]{3}');
          if (value.isEmpty) return 'Por favor insira seu cep';
          if (!regExp.hasMatch(value)) return 'O formato do CEP está incorreto';
        } catch (e) {
          return e.toString().replaceAll('Exception: ', '');
        }
      },
    );
  }
}
