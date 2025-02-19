class Catalogo {
  final String? id;
  final String nome;
  final String descricao;
  final int avaliacao;

  Catalogo({
    this.id,
    required this.nome,
    required this.descricao,
    required this.avaliacao,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'descricao': descricao,
      'avaliacao': avaliacao,
    };
  }
}
