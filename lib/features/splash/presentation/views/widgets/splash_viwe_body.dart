// features/splash/presentation/views/widgets/splash_viwe_body.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/constant.dart';
import 'package:fruits_app/core/services/fire_store_services.dart';
import 'package:fruits_app/core/services/firebase_auth_services.dart';
import 'package:fruits_app/core/services/shared_preferences_singleton.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_app/features/home/presentation/view/main_view.dart';
import 'package:fruits_app/features/on_bording/presentation/views/on_bording_view.dart';

class SplashViweBody extends StatefulWidget {
  const SplashViweBody({super.key});

  @override
  State<SplashViweBody> createState() => _SplashViweBodyState();
}

class _SplashViweBodyState extends State<SplashViweBody> {
  void initState(){
    excuteNavigation();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
        SvgPicture.asset(Assets.resourceImagesPlanet)

          ],),
        SvgPicture.asset(Assets.resourceImagesSplashButton),
        SvgPicture.asset(Assets.resourceImagesSplashBottom,fit: BoxFit.fill,)

      ],
    );
  }
  
 void excuteNavigation() async {
  bool isOnBordingViewSeen=SharedPreferencesSingleton.getBool(kisOnBordingViewSeen)??false;
  await Future.delayed(const Duration(seconds: 3));

  // يجب تنفيذ التنقل بعد انتهاء البناء الأولي
  if (mounted) {
    if(isOnBordingViewSeen){
      var isLoggedIn=FirebaseAuthService().isLoggedIn();
      if(isLoggedIn){
          Navigator.pushReplacementNamed(context, MainView.routeName);
      }
    else{

    Navigator.pushReplacementNamed(context, SigninView.routeName);
    }
    }else{
    Navigator.pushReplacementNamed(context, OnBordingView.routeName);
  }}
}
}