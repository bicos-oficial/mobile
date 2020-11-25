import 'package:flutter/material.dart';

class ImageUploadPerfil {
  static Container imageUploadPerfil() {
    return Container(
      width: 225,
      height: 225,
      alignment: Alignment(0, 1.15),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: AssetImage("assets/user.png"),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Container(
        height: 56,
        width: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: [0.3, 1.0],
            colors: [
              Color(0xFFF58524),
              Color(0XFFF92B7F),
            ],
          ),
          border: Border.all(
            width: 4.0,
            color: const Color(0xFFFFFFFF),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(56),
          ),
        ),
        child: SizedBox.expand(
          child: FlatButton(
            padding: EdgeInsets.all(0),
            child: Icon(
              Icons.photo_camera,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
