import 'package:bicos/entities/cargos/Categorias.dart';

class Cargos{

  // O cargo do freelancer (Ex: "Fotografo, Design, Cabelereiro")

  String _id;
  String _nomeCargo;
  DateTime _tempoCargo; // O usuário insere a data que ele ingressou na área
  Categorias _categorias;

  Cargos(this._id, this._nomeCargo, this._tempoCargo, this._categorias);
}