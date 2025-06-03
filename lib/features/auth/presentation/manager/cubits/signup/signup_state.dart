// features/auth/presentation/manager/cubits/signup/signup_state.dart
part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

final class SignupInitial extends SignupState {}
final class SignupLoading extends SignupState{
}
final class SignupSuccess extends SignupState{
  final UserEntity userEntity;

  SignupSuccess({required this.userEntity});


}
final class SignupFailure extends SignupState{
  final String error;

  SignupFailure({required this.error});



}



