import 'package:bicos/models/Endereco.dart';
import 'package:bicos/pages/components/customize_inputs/complemento-rua-input.dart';
import 'package:bicos/pages/components/customize_inputs/numero-rua-input.dart';
import 'package:bicos/pages/components/customize_inputs/single-input.dart';
import 'package:bicos/patterns/Colors.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:flutter/cupertino.dart';

class RegisterAddressForm {
  static Widget formularioDeEndereco(Endereco endereco, double scrollHeight,
      {TextEditingController ruaController,
      TextEditingController bairroController,
      TextEditingController cidadeController,
      TextEditingController estadoController,
      TextEditingController numeroController,
      TextEditingController complementoController}) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: (scrollHeight * .075),
        ),
        NumeroRuaInput.numeroRuaInput(numeroController,
            labelFontSize: (scrollHeight * .03)),
        SizedBox(
          height: (scrollHeight * .01),
        ),
        ComplementoRuaInput.complementoInput(complementoController,
            HexColor.fromHex(PatternsColors.primaryColor),
            labelFontSize: (scrollHeight * .03)),
        SizedBox(
          height: (scrollHeight * .01),
        ),
        SingleInput.singleInput('Rua:', ruaController, true,
            labelFontSize: (scrollHeight * .03),
            inputFontSize: (scrollHeight * .03)),
        SizedBox(
          height: (scrollHeight * .01),
        ),
        SingleInput.singleInput('Bairro:', bairroController, true,
            labelFontSize: (scrollHeight * .03),
            inputFontSize: (scrollHeight * .03)),
        SizedBox(
          height: (scrollHeight * .01),
        ),
        Row(
          children: [
            Flexible(
              child: SingleInput.singleInput('Cidade:', cidadeController, true,
                  labelFontSize: (scrollHeight * .03),
                  inputFontSize: (scrollHeight * .03)),
            ),
            SizedBox(
              width: (scrollHeight * .025),
            ),
            Flexible(
              child: SingleInput.singleInput('Estado:', estadoController, true,
                  labelFontSize: (scrollHeight * .03),
                  inputFontSize: (scrollHeight * .03)),
            ),
          ],
        ),
        SizedBox(
          height: (scrollHeight * .035),
        ),
      ],
    );
  }
}
