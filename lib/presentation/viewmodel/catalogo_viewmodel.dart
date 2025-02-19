import 'package:app_catalogo/data/model/model.dart';
import 'package:app_catalogo/data/repository/catalogo_repository.dart';

class CatalogoViewmodel {
  final CatalogoRepository repository;

  CatalogoViewmodel(this.repository);

  Future<void> addcatalogo(Catalogo catalogo) async {
    await repository.insertcatalogo(catalogo);
  }

  Future<List<Catalogo>> getcatalogo() async {
    return await repository.getDocumentos();
  }

  Future<void> updatecatalogo(String id, Catalogo catalogo) async {
    await repository.updatecatalogo(id, catalogo);
  }

  Future<void> deletecatalogo(String id) async {
    await repository.deletecatalogo(id);
  }
}
