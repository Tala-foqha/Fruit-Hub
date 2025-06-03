// features/auth/presentation/views/widgets/signup_view_block_consumer.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/helper_functions/build_error.dart';
import 'package:fruits_app/features/auth/presentation/manager/cubits/signup/signup_cubit.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBlovkConsumer extends StatelessWidget {
  const SignupViewBlovkConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      builder: (context, state) {
        
          return ModalProgressHUD(
            inAsyncCall: state is SignupLoading?true:false,
            child: SignupViewBody());
        },
       
       listener: (BuildContext context, SignupState state) { 
        if(state is SignupFailure){
          buildErrorBar(context, state.error);
        }
        },
    );
  }

}