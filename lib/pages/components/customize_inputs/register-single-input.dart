import 'package:flutter/material.dart';

class RegisterSingleInput {
  static TextFormField singleInput(
      String labelField, TextEditingController controller, bool readOnly,
      {double labelFontSize, double inputFontSize}) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.name,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: labelField,
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
          fontSize: (labelFontSize == null || inputFontSize == 0)
              ? 25
              : labelFontSize,
        ),
        contentPadding: EdgeInsets.all(15),
      ),
      style: TextStyle(
        fontSize:
            (inputFontSize == null || inputFontSize == 0) ? 20 : inputFontSize,
      ),
      controller: controller,
      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) return 'Este campo não pode ser vazio';
      },
      readOnly: readOnly,
    );
  }

  static TextFormField singleNumberInput(
      String labelField, TextEditingController controller, bool readOnly,
      {double labelFontSize, double inputFontSize}) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: labelField,
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
          fontSize: (labelFontSize == null || inputFontSize == 0)
              ? 25
              : labelFontSize,
        ),
        contentPadding: EdgeInsets.all(15),
      ),
      style: TextStyle(
        fontSize:
            (inputFontSize == null || inputFontSize == 0) ? 20 : inputFontSize,
      ),
      controller: controller,
      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) return 'Este campo não pode ser vazio';
      },
      readOnly: readOnly,
    );
  }
}
