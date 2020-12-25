import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:validadores/ValidarCPF.dart';

class CpfInput {
  static TextFormField cpfInput(TextEditingController controller, Color color,
      {double labelFontSize}) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.number,
      inputFormatters: [new MaskTextInputFormatter(mask: '###.###.###-##')],
      textAlign: TextAlign.center,
      controller: controller,
      decoration: InputDecoration(
        labelText: "CPF ou CNPJ",
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
        if (value.isEmpty) return 'Por favor insira seu cpf';
        if (!CPF.isValid(value)) return 'O CPF que você inseriu está incorreto';
      },
    );
  }
}
