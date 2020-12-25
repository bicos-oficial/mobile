import 'package:bicos/patterns/Colors.dart';
import 'package:bicos/utils/hex-color.dart';
import 'package:flutter/material.dart';

class NextButton extends StatefulWidget {
  NextButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  State<StatefulWidget> createState() {
    return _NextButtonState(this.onPressed);
  }
}

class _NextButtonState extends State<NextButton> {
  final GestureTapCallback onPressed;

  _NextButtonState(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: Text(
        "Próximo",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25,
        ),
        textAlign: TextAlign.left,
      ),
      icon: Icon(Icons.navigate_next, size: 40),
      backgroundColor: HexColor.fromHex(PatternsColors.primaryColor),
    );
  }
}
