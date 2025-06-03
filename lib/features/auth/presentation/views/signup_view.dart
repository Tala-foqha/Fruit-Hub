// features/auth/presentation/views/signup_view.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/services/get_it_services.dart';
import 'package:fruits_app/features/auth/domain/repos/auth_repos.dart';
import 'package:fruits_app/features/auth/presentation/manager/cubits/signup/signup_cubit.dart';
import 'package:fruits_app/features/auth/presentation/views/login_view.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/signup_view_block_consumer.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRebos>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context, title: 'حساب جديد'),

        body: SignupViewBlovkConsumer(),
      ),
    );
  }
}

