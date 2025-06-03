// features/auth/presentation/views/signin_view.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/services/get_it_services.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/auth/domain/repos/auth_repos.dart';
import 'package:fruits_app/features/auth/presentation/manager/cubits/signin/signin_cubit.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const routeName = 'LogIn';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRebos>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context, title: 'تسجيل دخول'),
        body: SigninViewBodyBlocConsumer(),
      ),
    );
  }
}


AppBar buildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back_ios_new),
    ),
    centerTitle: true,
    title: Text(title, style: AppStyles.bold19, textAlign: TextAlign.center),
  );
}
