import 'package:bicos/entity/cargos/Cargos.dart';

import 'Usuario.dart';

class UsuarioFreelancer extends Usuario {

  List<Cargos> _cargos;

  UsuarioFreelancer(
      String id,
      String nome,
      String email,
      DateTime dataNascimento,
      String cpf,
      String numeroTelefone,
      String rua,
      int numeroRua,
      String bairro,
      String cidade,
      String estado,
      String cep,
      this._cargos)
      : super(id, nome, email, dataNascimento, cpf, numeroTelefone, rua,
            numeroRua, bairro, cidade, estado, cep);

}
