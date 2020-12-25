import 'package:bicos/patterns/Colors.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:flutter/material.dart';

class NameInput {
  static TextFormField nameInput(TextEditingController controller,
      {double labelFontSize}) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.name,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: 'Nome Completo',
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
        contentPadding: EdgeInsets.all(25),
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
