import 'dart:io';

import 'package:bicos/models/usuarios/Usuario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class UsuarioService {
  cadastrarUsuario(Usuario usuarioToDb) {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth
        .createUserWithEmailAndPassword(
            email: usuarioToDb.email, password: usuarioToDb.password)
        .then((firebaseUser) {
      Firestore db = Firestore.instance;
      db
          .collection('usuarios')
          .document(firebaseUser.user.uid)
          .setData(usuarioToDb.toMap());

      _uploadImagem(firebaseUser.user.uid, usuarioToDb.perfilImage);
    }).catchError((onError) {
      print("erro app: " + onError.toString());
    });
  }

  Future _uploadImagem(String uidUser, File image) async {
    FirebaseStorage storage = FirebaseStorage.instance;
    StorageReference pastaDePerfil = storage
        .ref()
        .child('users')
        .child('photos')
        .child('perfil')
        .child(uidUser + '.jpg');
    pastaDePerfil.putFile(image);
  }
}
