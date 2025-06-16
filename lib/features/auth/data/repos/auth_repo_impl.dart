// features/auth/data/repos/auth_repo_impl.dart
import 'dart:convert';
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

import 'package:shared_preferences/shared_preferences.dart';

class AuthRepoImpl extends AuthRebos {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseServices databaseService;

  AuthRepoImpl(
      {required this.databaseService, required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(
        name: name,
        email: email,
        uId: user.uid,
      );
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      await deleteUser(user);
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(
        ServerFailure(
          'حدث خطأ ما. الرجاء المحاولة مرة اخرى.',
        ),
      );
    }
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      var userEntity = await getUserData(uid: user.uid);
      // await saveUserData(user: userEntity);
      return right(
        userEntity,
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(
        ServerFailure(
          'حدث خطأ ما. الرجاء المحاولة مرة اخرى.',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();

      var userEntity = UserModel.fromFirebaseUser(user);
      var isUserExist = await databaseService.checkIfDataExists(
          path: BackendEndpoint.isUserExist, documentId: user.uid);
      if (isUserExist) {
        await getUserData(uid: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(
        ServerFailure(
          'حدث خطأ ما. الرجاء المحاولة مرة اخرى.',
        ),
      );
    }
  }

  @override
  // Future<Either<Failure, UserEntity>> signinWithFacebook() async {
  //   User? user;
  //   try {
  //     user = await firebaseAuthService.signInWithFacebook();
  //     var userEntity = UserModel.fromFirebaseUser(user);
  //     await addUserData(user: userEntity);
  //     return right(userEntity);
  //   } catch (e) {
  //     await deleteUser(user);
  //     log(
  //       'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
  //     );
  //     return left(
  //       ServerFailure(
  //         'حدث خطأ ما. الرجاء المحاولة مرة اخرى.',
  //       ),
  //     );
  //   }
  // }

  @override
  // Future<Either<Failure, UserEntity>> signinWithApple() async {
  //   User? user;
  //   try {
  //     //user = await firebaseAuthService.s();

  //     var userEntity = UserModel.fromFirebaseUser(user.);
  //     await addUserData(user: userEntity);
  //     return right(userEntity);
  //   } catch (e) {
  //     await deleteUser(user);
  //     log(
  //       'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
  //     );
  //     return left(
  //       ServerFailure(
  //         'حدث خطأ ما. الرجاء المحاولة مرة اخرى.',
  //       ),
  //     );
  //   }
  // }

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseService.addData(
      path: BackendEndpoint.addData,
      data: UserModel.fromEntity(user).toMap(),
      
    );
  }

  @override
  Future<UserEntity> getUserData({required String uid}) async {
    var userData = await databaseService.getData(
        path: BackendEndpoint.getUserData, documentId: uid);
    return UserModel.fromJson(userData);
  }

  // Future saveUserData({required UserEntity user}) async {
  //   var jsonData = jsonEncode(UserModel.fromEntity(user).toMap());
  //   await Prefs.setString(kUserData, jsonData);
  // }
}