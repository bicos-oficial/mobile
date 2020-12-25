import 'package:bicos/patterns/Colors.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:flutter/material.dart';

class NumeroRuaInput {
  static TextFormField numeroRuaInput(TextEditingController controller,
      {double labelFontSize}) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.number,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: 'Numero',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: HexColor.fromHex(PatternsColors.primaryColor), width: 1),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: HexColor.fromHex(PatternsColors.primaryColor)),
        ),
        labelStyle: TextStyle(
          color: HexColor.fromHex(PatternsColors.primaryColor),
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
        RegExp regExp = new RegExp('/\D/g');
        if (value.isEmpty) return 'Este campo não pode ser vazio';
        if (regExp.hasMatch(value)) {
          return 'Somente Numeros';
        }
      },
    );
  }
}
