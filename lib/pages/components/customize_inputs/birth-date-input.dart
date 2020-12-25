import 'package:bicos/patterns/Colors.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:bicos/utils/parseUtils.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BirthDateInput {
  static TextFormField birthDateInput(TextEditingController controller,
      {double labelFontSize}) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.datetime,
      inputFormatters: [new MaskTextInputFormatter(mask: '##/##/####')],
      textAlign: TextAlign.center,
      controller: controller,
      decoration: InputDecoration(
        hintText: 'dd/mm/aaaa',
        labelText: "Data de Aniversário",
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange, width: 1),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange),
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
        try {
          if (value.isEmpty) return 'Por favor insira sua data de aniversario';
          ParseUtils.parseStringToDate(value);
        } catch (e) {
          return e.toString().replaceAll('Exception: ', '');
        }
      },
    );
  }
}
