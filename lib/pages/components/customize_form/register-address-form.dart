import 'package:bicos/models/Endereco.dart';
import 'package:bicos/pages/components/customize_inputs/register-single-input.dart';
import 'package:flutter/cupertino.dart';

class RegisterAddressForm {
  static Widget formularioDeEndereco(Endereco endereco,
      {TextEditingController ruaController,
      TextEditingController bairroController,
      TextEditingController cidadeController,
      TextEditingController estadoController,
      TextEditingController numeroController,
      TextEditingController complementoController}) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 25,
        ),
        RegisterSingleInput.singleNumberInput(
            'Numero:', numeroController, false,
            labelFontSize: 17, inputFontSize: 22),
        SizedBox(
          height: 5,
        ),
        RegisterSingleInput.singleInput(
            'Complemento:', complementoController, false,
            labelFontSize: 17, inputFontSize: 22),
        SizedBox(
          height: 5,
        ),
        RegisterSingleInput.singleInput('Rua:', ruaController, true,
            labelFontSize: 15, inputFontSize: 20),
        SizedBox(
          height: 5,
        ),
        RegisterSingleInput.singleInput('Bairro:', bairroController, true,
            labelFontSize: 15, inputFontSize: 20),
        SizedBox(
          height: 5,
        ),
        RegisterSingleInput.singleInput('Cidade:', cidadeController, true,
            labelFontSize: 15, inputFontSize: 20),
        SizedBox(
          height: 5,
        ),
        RegisterSingleInput.singleInput('Estado:', estadoController, true,
            labelFontSize: 15, inputFontSize: 20),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
