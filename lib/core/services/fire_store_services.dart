// core/services/fire_store_services.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_app/core/services/data_base_services.dart';

class FireStoreServices implements DatabaseServices {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({required String path, required Map<String, dynamic> data})async {
  await  firestore.collection(path).add(data);
  }

}
