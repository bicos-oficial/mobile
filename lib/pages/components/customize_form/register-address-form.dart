import 'package:bicos/entity/Endereco.dart';
import 'package:bicos/pages/components/customize_inputs/register-single-input.dart';
import 'package:flutter/cupertino.dart';

class RegisterAddressForm {
  static Widget formularioDeEndereco(Endereco endereco) {
    TextEditingController _ruaController =
        new TextEditingController(text: endereco.rua);
    TextEditingController _bairroController =
    new TextEditingController(text: endereco.bairro);
    TextEditingController _cidadeController =
    new TextEditingController(text: endereco.cidade);
    TextEditingController _estadoController =
    new TextEditingController(text: endereco.estado);
    TextEditingController _numeroController = new TextEditingController();
    TextEditingController _complementoController = new TextEditingController();

    return Column(
      children: <Widget>[
        SizedBox(
          height: 25,
        ),
        RegisterSingleInput.singleNumberInput(
            'Numero:', _numeroController, false,
            labelFontSize: 15, inputFontSize: 20),
        SizedBox(
          height: 5,
        ),
        RegisterSingleInput.singleInput(
            'Complemento:', _complementoController, false,
            labelFontSize: 15, inputFontSize: 20),
        SizedBox(
          height: 5,
        ),
        RegisterSingleInput.singleInput('Rua:', _ruaController, true,
            labelFontSize: 14, inputFontSize: 18),
        SizedBox(
          height: 5,
        ),
        RegisterSingleInput.singleInput('Bairro:', _bairroController, true,
            labelFontSize: 14, inputFontSize: 18),
        SizedBox(
          height: 5,
        ),
        RegisterSingleInput.singleInput('Cidade:', _cidadeController, true,
            labelFontSize: 14, inputFontSize: 18),
        SizedBox(
          height: 5,
        ),
        RegisterSingleInput.singleInput('Estado:', _estadoController, true,
            labelFontSize: 14, inputFontSize: 18),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
