import 'package:flutter/material.dart';

class NextButton {
  static Container nextButton(GlobalKey<FormState> _formkey,
      BuildContext context, StatelessWidget nextPage) {
    return Container(
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
            "PROXIMO",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            if (_formkey.currentState.validate()) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => nextPage,
                ),
              );
            }
          },
        ),
      ),
    );
  }

  static FloatingActionButton floatingActionButton(
      GlobalKey<FormState> _formkey,
      BuildContext context,
      StatelessWidget nextPage) {
    return FloatingActionButton.extended(
      onPressed: () {
        if (_formkey.currentState.validate()) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => nextPage,
            ),
          );
        }
      },
      label: Text(
        "Próximo",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
      icon: Icon(Icons.navigate_next, size: 40),
      backgroundColor: Colors.deepOrange,
    );
  }
}
