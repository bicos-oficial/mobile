import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/customize_button/next-button.dart';
import 'package:bicos/pages/components/customize_inputs/email-input.dart';
import 'package:bicos/pages/singup_pages/cep.dart';
import 'package:bicos/patterns/Colors.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Email extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController controller = new TextEditingController();
  Usuario usuario = new Usuario();

  Email(this.usuario);

  @override
  Widget build(BuildContext context) {
    var appBar = BackAppBar.backAppBarNavigator(context);
    var size = MediaQuery.of(context).size;
    double screenHeigth = ((size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top);

    void nextPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Cep(Usuario(
                nome: usuario.nome,
                cpfOrCnpj: usuario.cpfOrCnpj,
                dataNascimento: usuario.dataNascimento,
                email: controller.text))),
      );
    }

    return Scaffold(
      appBar: appBar,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        color: Colors.white,
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              EmailInput.emailInput(
                  HexColor.fromHex(PatternsColors.primaryColor),
                  controller: controller,
                  labelFontSize: screenHeigth * .044)
            ],
          ),
        ),
      ),
      floatingActionButton: NextButton(onPressed: () {
        if (_formkey.currentState.validate()) {
          nextPage();
        }
      },),
    );
  }
}
