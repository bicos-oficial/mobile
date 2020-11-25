import 'dart:core';

class Usuario {
  String _id;
  String _nome;
  String _email;
  DateTime _dataNascimento;
  String _cpfOrCnpj;
  String _numeroTelefone;
  String _rua;
  int _numeroRua;
  String _bairro;
  String _cidade;
  String _estado;
  String _cep;

  Usuario(
      this._id,
      this._nome,
      this._email,
      this._dataNascimento,
      this._cpfOrCnpj,
      this._numeroTelefone,
      this._rua,
      this._numeroRua,
      this._bairro,
      this._cidade,
      this._estado,
      this._cep);
}
