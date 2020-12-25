import 'package:flutter/material.dart';

class ComplementoRuaInput {
  static TextFormField complementoInput(
      TextEditingController controller, Color color,
      {double labelFontSize}) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.text,
      textAlign: TextAlign.center,
      controller: controller,
      decoration: InputDecoration(
        labelText: "Complemento",
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
        contentPadding: EdgeInsets.only(top: 35, right: 25, left: 25),
      ),
      style: TextStyle(
        fontSize: 20,
      ),
      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) return 'Por favor insira seu complemento';
      },
    );
  }
}
