// features/auth/presentation/manager/cubits/signup/signup_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_app/features/auth/domain/repos/auth_repos.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
final AuthRebos authRepo;
Future<void>createUserWithEmailAndPassword(
  String email,String password,String name)async{
emit(SignupLoading());
final result =await authRepo.createUserWithEmailAndPassword(
  email, password, name,);
  result.fold((failure)=>emit(SignupFailure(error:failure.message)),
   (success)=>emit(SignupSuccess(userEntity:success )));


  
}
}