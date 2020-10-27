import 'package:flutter/material.dart';
import 'package:validadores/validadores.dart';

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              textAlign: TextAlign.center,
              validator: (value) {
                // Aqui entram as validações
                return Validador()
                    .add(Validar.CPF, msg: 'CPF Inválido')
                    .add(Validar.OBRIGATORIO, msg: 'Campo obrigatório')
                    .minLength(11)
                    .maxLength(11)
                    .valido(value, clearNoNumber: true);
              },
              decoration: InputDecoration(
                labelText: "CPF:",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Consolas",
                  fontSize: 25,
                ),
              ),
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Container(
              height: 75,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFF58524),
                    Color(0XFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Email(),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
