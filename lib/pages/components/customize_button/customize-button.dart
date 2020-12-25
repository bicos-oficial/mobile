import 'package:bicos/patterns/Colors.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizeButton {
  // ignore: missing_return
  static Widget primaryButton(BuildContext context, StatelessWidget page,
      {String title, double height, double fontSize}) {
    return Container(
      height: (height == null || height == 0) ? 75 : height,
      width: 300,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [
            HexColor.fromHex('FF0000'),
            HexColor.fromHex('FF3D00'),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                (title == null || title == '') ? 'Botão Primário' : title,
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: (fontSize == null || fontSize == 0)
                      ? (height * .466)
                      : fontSize,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );
          },
        ),
      ),
    );
  }

  static Widget secondaryButton(BuildContext context, StatelessWidget page,
      {String title, double height}) {
    return Container(
        height: (height == null || height == 0) ? 75 : height,
        width: 300,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: HexColor.fromHex(PatternsColors.secondaryColor),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: SizedBox.expand(
          child: FlatButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  (title == null || title == '') ? 'Botão Secundario' : title,
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize:
                        (height == null || height == 0) ? 35 : (height * .373),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page,
                ),
              );
            },
          ),
        ));
  }

  static Widget customButton(BuildContext context,
      {String title,
      StatelessWidget page,
      double height,
      Color color,
      Color borderColor,
      Color textColor,
      double fontSize}) {
    return Container(
        height: (height == null || height == 0) ? 75 : height,
        width: 300,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: (color == null) ? Colors.transparent : color,
          border: Border.all(
              color: (borderColor == null) ? Colors.transparent : borderColor,
              width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: SizedBox.expand(
          child: FlatButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  (title == null || title == '') ? 'Botão Customizado' : title,
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    color: (textColor == null) ? Colors.white : textColor,
                    fontSize: (fontSize == null || fontSize == 0)
                        ? (height * .373)
                        : fontSize,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page,
                ),
              );
            },
          ),
        ));
  }
}
