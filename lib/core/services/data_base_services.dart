// core/services/data_base_services.dart
abstract class DatabaseServices{


  Future<void>addData({required String path,required Map<String,dynamic>data});
 Future<dynamic>getData({
  required String path,
  String? documentId,
  Map<String,dynamic>?query});

 Future<bool>checkIfDataExists({required String path,required String documentId

 });
 }
