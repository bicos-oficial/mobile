import 'package:bicos/pages/components/back-app-bar.dart';
import 'package:bicos/pages/components/image-upload.dart';
import 'package:bicos/pages/components/next-button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'email.dart';

class PerfilImage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BackAppBar.backAppBarNavigator(context),
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: ImageUploadPerfil.imageUploadPerfil(),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton:
            NextButton.floatingActionButton(_formkey, context, Email()));
  }
}
