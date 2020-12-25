import 'package:bicos/pages/components/customize_button/customize-button.dart';
import 'package:bicos/pages/components/customize_inputs/email-input.dart';
import 'package:bicos/pages/components/customize_inputs/password-input.dart';
import 'package:bicos/pages/home.page.dart';
import 'package:bicos/pages/reset-password.page.dart';
import 'package:bicos/pages/singup_pages/signup.page.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double screenHeigth = (size.height - MediaQuery.of(context).padding.top);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            left: 40,
            right: 40),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login',
              textAlign: TextAlign.center,
              style: GoogleFonts.ramaraja(
                  fontSize: ((screenHeigth * .23) * .58),
                  color: HexColor.fromHex('FF3D00')),
            ),
            EmailInput.emailInput(Colors.deepOrange, labelText: 'E-mail'),
            PasswordInput.passwordInput(labelText: 'Senha'),
            SizedBox(
              height: (screenHeigth * .03),
            ),
            Container(
              height: 15,
              alignment: Alignment.bottomRight,
              child: FlatButton(
                child: Text(
                  "Esqueceu sua senha?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: HexColor.fromHex('FF3D00'),
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      fontStyle: FontStyle.italic),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[
        SizedBox(
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: (screenHeigth * .3),
          child: Column(
            children: <Widget>[
              CustomizeButton.primaryButton(
                  context, HomePage(), title: 'ENTRAR',
                  height: (screenHeigth * .1125)),
              SizedBox(
                height: (screenHeigth * .04),
              ),
              CustomizeButton.secondaryButton(
                  context, SignupPage(), title: 'Cadastre-se',
                  height: (screenHeigth * .1125))
            ],
          ),
        ),
      ],
    );
  }
}
