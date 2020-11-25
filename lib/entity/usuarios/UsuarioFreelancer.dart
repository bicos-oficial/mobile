import 'package:bicos/entity/Endereco.dart';
import 'package:bicos/entity/cargos/Cargos.dart';

import 'Usuario.dart';

class UsuarioFreelancer extends Usuario {
  List<Cargos> _cargos;

  UsuarioFreelancer(
      String id,
      String nome,
      String email,
      DateTime dataNascimento,
      String cpfOrCnpj,
      String numeroTelefone,
      Endereco endereco)
      : super(id, nome, email, dataNascimento, cpfOrCnpj, numeroTelefone,
            endereco);
}
