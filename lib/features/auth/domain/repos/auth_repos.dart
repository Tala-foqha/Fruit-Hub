// features/auth/domain/repos/auth_repos.dart

import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/errors/failures.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRebos{
   Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);

  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password);

  Future<Either<Failure, UserEntity>> signinWithGoogle();
  //Future<Either<Failure, UserEntity>> signinWithFacebook();

  Future addUserData({required UserEntity user});
  //Future saveUserData({required UserEntity user});
  Future<UserEntity> getUserData({required String uid});
  //Future<Either<Failure, UserEntity>> signinWithApple();

  
}