import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_button/customize-button.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:flutter/material.dart';

import 'nome.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar = BackAppBar.backAppBarNavigator(context);
    var size = MediaQuery.of(context).size;
    double screenHeigth = ((size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top);

    return Scaffold(
      appBar: appBar,
      body: Container(
        padding: EdgeInsets.only(
            left: 25,
            right: 25),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: (screenHeigth), child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomizeButton.primaryButton(
                    context, NomeSobrenome(), title: 'Crie a sua conta',
                    height: (screenHeigth * .12),
                    fontSize: ((screenHeigth * .12) * .35)),
                SizedBox(
                  height: (screenHeigth * .081),
                ),
                CustomizeButton.customButton(
                    context, color: HexColor.fromHex('395185'),
                    height: (screenHeigth * .1),
                    title: 'Entre com Facebook',
                    fontSize: ((screenHeigth * .12) * .25)),
                SizedBox(
                  height: (screenHeigth * .081),
                ),
                CustomizeButton.customButton(
                    context, textColor: HexColor.fromHex('FF0000'),
                    borderColor: HexColor.fromHex('FF0000'),
                    height: (screenHeigth * .1),
                    title: 'Entre com Gmail',
                    fontSize: ((screenHeigth * .12) * .25)),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
