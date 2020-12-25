import 'package:flutter/material.dart';

class NextButton {
  static FloatingActionButton floatingActionButtonStateless(
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
