// features/auth/domain/repos/auth_repos.dart

import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/errors/failures.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRebos{
  Future<Either<Failure,UserEntity>>createUserWithEmailAndPassword(String email,String password,String name);
  
}