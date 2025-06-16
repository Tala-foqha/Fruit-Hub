// features/auth/presentation/manager/cubits/signin/signin_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:fruits_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_app/features/auth/domain/repos/auth_repos.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRebos) : super(SigninInitial());
  final AuthRebos authRebos;
 Future<void> signin(String email, String password) async {
    emit(SigninLoading());
    var result = await authRebos.signinWithEmailAndPassword(
      email,
      password,
    );
    result.fold(
      (failure) => emit(SignupFailure(message: failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signinWithGoogle() async {
    emit(SigninLoading());
    var result = await authRebos.signinWithGoogle();
    result.fold(
      (failure) => emit(SignupFailure(message: failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }

  // Future<void> signinWithFacebook() async {
  //   emit(SigninLoading());
  //   var result = await authRebos.signinWithFacebook();
  //   result.fold(
  //     (failure) => emit(SignupFailure(message: failure.message)),
  //     (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
  //   );
  // }

  // Future<void> signinWithApple() async {
  //   emit(SigninLoading());
  //   var result = await authRebos.signinWithApple();
  //   result.fold(
  //     (failure) => emit(SigninFailure(message: failure.message)),
  //     (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
  //   );
  // }
}
