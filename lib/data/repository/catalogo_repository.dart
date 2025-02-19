import 'package:app_catalogo/core/database.dart';
import 'package:app_catalogo/data/model/model.dart';

class CatalogoRepository {
  final String collection = 'catalogo';

  Future<void> insertcatalogo(Catalogo catalogo) async {
    await Database.addDocumento(collection, catalogo.toMap());
  }

  Future<List<Catalogo>> getDocumentos() async {
    List<Map<String, dynamic>> catalogoMaps = await Database.getDocumentos(
      collection,
    );
    return catalogoMaps.map((map) {
      return Catalogo(
        id: map['id'],
        nome: map['nome'],
        descricao: map['descricao'],
        avaliacao: map['avaliacao'],
      );
    }).toList();
  }

  updatecatalogo(String id, Catalogo catalogo) async {
    await Database.updateDocumento(collection, id, catalogo.toMap());
  }

  deletecatalogo(String id) async {
    await Database.deleteDocumento(collection, id);
  }
}
