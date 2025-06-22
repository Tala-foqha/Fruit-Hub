// features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/helper_functions/build_error.dart';
import 'package:fruits_app/features/auth/presentation/manager/cubits/signin/signin_cubit.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:fruits_app/features/home/presentation/view/main_view.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if(state is SigninSuccess){
          Navigator.pushNamed(context, MainView.routeName);
        }
        if(state is SignupFailure){
          return buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(  
          inAsyncCall: state is SigninLoading?true:false,
        child: SigninViewBody());
      },
    );
  }
}
