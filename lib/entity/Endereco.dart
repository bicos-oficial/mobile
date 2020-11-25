class Endereco {
  final String cep;
  final String rua;
  final int numeroRua;
  final String bairro;
  final String cidade;
  final String estado;
  final String complemento;

  Endereco(
      {this.cep,
      this.rua,
      this.numeroRua,
      this.bairro,
      this.cidade,
      this.estado,
      this.complemento});

  factory Endereco.fromJson(Map<String, dynamic> json) {
    return Endereco(
        cep: json['cep'],
        rua: json['logradouro'],
        bairro: json['bairro'],
        cidade: json['localidade'],
        estado: json['uf']);
  }
}
