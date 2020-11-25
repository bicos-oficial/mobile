import 'dart:convert';

import 'package:bicos/entity/Endereco.dart';
import 'package:http/http.dart' as http;

Future<Endereco> getEndereco(String cep) async {
  var response = await http.get('https://viacep.com.br/ws/$cep/json/');

  if (response.statusCode == 200) {
    return Endereco.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Falha ao buscar CEP');
  }
}
