// core/services/fire_store_services.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_app/core/services/data_base_services.dart';

class FireStoreServices implements DatabaseServices {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({required String path, required Map<String, dynamic> data,String?documentId})async {
    if(documentId!=null){
await  firestore.collection(path).doc(documentId).set(data);
    }else{
      await firestore.collection(path).add(data);
    }

  
  }
  
  @override
  Future<Map<String, dynamic>> getData({required String path, required String documentId}) async{

    var data=await firestore.collection(path).doc(documentId).get();
    return data.data() as Map<String, dynamic>;
  }
  
  @override
  Future<bool> checkIfDataExists({required String path, required String documentId})async {

 var data =await firestore.collection(path).doc(documentId).get();
 return data.exists;
  }

}
