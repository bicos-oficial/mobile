import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailInput {
  static TextFormField emailInput(Color color,
      {TextEditingController controller,
      String labelText,
      double labelFontSize}) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.emailAddress,
      textAlign: TextAlign.center,
      controller: controller,
      decoration: InputDecoration(
        labelText: (labelText == null || labelText == '')
            ? 'Insira seu Email'
            : labelText,
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
        if (value.isEmpty) return 'Por favor insira seu e-mail';
        if (!EmailValidator.validate(value))
          return 'Formato de e-mail foge do padrão';
      },
    );
  }
}
