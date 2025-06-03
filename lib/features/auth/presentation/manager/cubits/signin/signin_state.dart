// features/auth/presentation/manager/cubits/signin/signin_state.dart
part of 'signin_cubit.dart';

@immutable
abstract class SigninState {}

class SigninInitial extends SigninState {}
final class SigninLoading extends SigninState{}
final class SigninSuccess extends SigninState{
  final UserEntity userEntity;

  SigninSuccess({required this.userEntity});
}
final class SignupFailure extends SigninState{
  final String message;

  SignupFailure({required this.message});
}


