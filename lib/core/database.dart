import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;

  static Future<void> addDocumento(
    String collection,
    Map<String, dynamic> data,
  ) async {
    await _db.collection(collection).add(data);
  }

  static Future<List<Map<String, dynamic>>> getDocumentos(
    String collection,
  ) async {
    QuerySnapshot snapshot = await _db.collection(collection).get();
    return snapshot.docs
        .map((doc) => {'id': doc.id, ...doc.data() as Map<String, dynamic>})
        .toList();
  }

  static updateDocumento(
    String collection,
    String id,
    Map<String, dynamic> data,
  ) async {
    await _db.collection(collection).doc(id).update(data);
  }

  static deleteDocumento(String collection, String id) async {
    await _db.collection(collection).doc(id).delete();
  }
}
