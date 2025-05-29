// features/splash/presentation/views/splash_view.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/features/splash/presentation/views/widgets/splash_viwe_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName='splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: SplashViweBody()) ,
    ) ;
  }
}