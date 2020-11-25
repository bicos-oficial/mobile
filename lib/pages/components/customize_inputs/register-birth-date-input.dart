import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterBirthDateInput{

  static TextFormField birthDateInput() {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.datetime,
      inputFormatters: [new MaskTextInputFormatter(mask: '##/##/####')],
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'dd/mm/aaaa',
        labelText: "Insira sua Data de Aniversário",
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
          fontSize: 22,
        ),
        contentPadding: EdgeInsets.all(15),
      ),
      style: TextStyle(
        fontSize: 20,
      ),
      // ignore: missing_return
      validator: (value) {
        try {
          if (value.isEmpty) return 'Por favor insira seu cep';
          _parseStringToDate(value);
        } catch (e) {
          return e.toString().replaceAll('Exception: ', '');
        }
//        if (!regExp.hasMatch(value)) return 'O formato do CEP está incorreto';
      },
    );
  }
  static DateTime _parseStringToDate(String value) {
    int _dia = int.parse(value.substring(0, 2));
    int _mes = int.parse(value.substring(3, 5));
    int _ano = int.parse(value.substring(6, 10));

    try {
      if (_dia > 31) {
        throw Exception('A insira um dia valido');
      } else if (_mes > 12) {
        throw Exception('A insira um mês valido');
      } else if (_ano > (DateTime.now().year)) {
        throw Exception('A insira um ano valido');
      } else if (_ano > (DateTime.now().year - 18)) {
        throw Exception(
            'Você tem que ter mais de 18 anos para realizar seu cadastro');
      } else {
        DateTime dataDeNascimeto = new DateTime(_ano, _mes, _dia);
        return dataDeNascimeto;
      }
    } catch (e) {
      throw Exception(e.toString().replaceAll('Exception: ', ''));
    }
  }
}