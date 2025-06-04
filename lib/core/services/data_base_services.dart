// core/services/data_base_services.dart


abstract class DatabaseServices{


  Future<void>addData({required String path,required Map<String,dynamic>data});

  
 }