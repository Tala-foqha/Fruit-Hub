// core/helper_functions/on_generate_route.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_app/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_app/features/on_bording/presentation/views/on_bording_view.dart';
import 'package:fruits_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic>onGenerateRoute(RouteSettings settings){
  switch(settings.name){
    case SplashView.routeName:
 return MaterialPageRoute(builder: (context)=>SplashView());
 case OnBordingView.routeName:
 return MaterialPageRoute(builder: (context)=>OnBordingView());
 case SigninView.routeName:
 return MaterialPageRoute(builder: (context)=>SigninView());
 case SignupView.routeName:
 return MaterialPageRoute(builder: (context)=>SignupView());

   default: 
   return MaterialPageRoute(builder: (context)=>Scaffold());
  }
}