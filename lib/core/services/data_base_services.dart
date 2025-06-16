// core/services/data_base_services.dart
abstract class DatabaseServices{


  Future<void>addData({required String path,required Map<String,dynamic>data});
 Future<Map<String,dynamic>>getData({required String path,required String documentId});

 Future<bool>checkIfDataExists({required String path,required String documentId

 });
 }
