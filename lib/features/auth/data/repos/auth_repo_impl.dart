// features/auth/data/repos/auth_repo_impl.dart
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_app/core/errors/exceptions.dart';
import 'package:fruits_app/core/errors/failures.dart';
import 'package:fruits_app/core/services/data_base_services.dart';
import 'package:fruits_app/core/services/firebase_auth_services.dart';
import 'package:fruits_app/core/utils/backend_endpoint.dart';
import 'package:fruits_app/features/auth/data/models/user_model.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_app/features/auth/domain/repos/auth_repos.dart';

class AuthRepoImpl extends AuthRebos {
  final FirebaseAuthServices firebaseAuthServices;
  final DatabaseServices databaseServices;

  AuthRepoImpl( {required this.databaseServices,required this.firebaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(String email, String password,String name,)async {
    User ?user;
  try {
   user=  await firebaseAuthServices.createUserWithEmailAndPassword(email: email, 
    password: password);
var userEntity=UserEntity(name: name, email: email, uId: user.uid);
    await addUserData(user: userEntity);
    return right(userEntity);
} on CustomException catch (e) {
  if(user !=null){
    firebaseAuthServices.deleteUser();

  }
  return left(ServerFailure(e.message));
  
}
  
  }
  
  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(String email, String password, )async {
    try {
  var user=  await firebaseAuthServices.SignInWithEmailAndPassword(email: email, 
    password: password);
    return right(UserModel.fromFirebaseUser(user));
} on CustomException catch (e) {
  return left(ServerFailure(e.message));
  
}catch(e){
  log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
     return left(
        ServerFailure(
          'حدث خطأ ما. الرجاء المحاولة مرة اخرى.',
        ),
      );
}
  }
  
  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle()async {
    User?user;
    try{
      var user=await firebaseAuthServices.signInWithGoogle();
      var userEntity=UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return Right(UserModel.fromFirebaseUser(user));
      
    }catch(e){
      if(user !=null){
    firebaseAuthServices.deleteUser();

  }
      
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
    return left(ServerFailure('حدث خطأ ما الرجاء المحاولة مرةأخرى.'));
    
    }

  }
  
  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook()async {
    User? user;
  try{
      var user=await firebaseAuthServices.signInWithFacebook();
       var userEntity=UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return Right(UserModel.fromFirebaseUser(user));
      
    }catch(e){
      if(user !=null){
    firebaseAuthServices.deleteUser();
      }
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
    return left(ServerFailure('حدث خطأ ما الرجاء المحاولة مرةأخرى.'));
    
    }
  }
  
  @override
  Future addUserData({required UserEntity user})async {
    await databaseServices.addData(path: BackendEndpoint.addData,
     data: user.toMap());
 
  }
  
   
  
}