import 'dart:core';

import 'package:bicos/entity/Endereco.dart';

class Usuario {
  String _id;
  String _nome;
  String _email;
  DateTime _dataNascimento;
  String _cpfOrCnpj;
  String _numeroTelefone;
  Endereco _endereco;

  Usuario(
      this._id,
      this._nome,
      this._email,
      this._dataNascimento,
      this._cpfOrCnpj, this._numeroTelefone, this._endereco);
}
