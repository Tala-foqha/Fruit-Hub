// features/auth/data/repos/auth_repo_impl.dart
import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/errors/exceptions.dart';
import 'package:fruits_app/core/errors/failures.dart';
import 'package:fruits_app/core/services/firebase_auth_services.dart';
import 'package:fruits_app/features/auth/data/models/user_model.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_app/features/auth/domain/repos/auth_repos.dart';

class AuthRepoImpl extends AuthRebos {
  final FirebaseAuthServices firebaseAuthServices;

  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(String email, String password,String name,)async {
  try {
  var user=  await firebaseAuthServices.createUserWithEmailAndPassword(email: email, 
    password: password);
    return right(UserModel.fromFirebaseUser(user));
} on CustomException catch (e) {
  return left(ServerFailure(e.message));
  
}
  
  }
}