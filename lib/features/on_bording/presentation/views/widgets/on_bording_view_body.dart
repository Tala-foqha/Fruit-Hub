// features/on_bording/presentation/views/widgets/on_bording_view_body.dart
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/constant.dart';
import 'package:fruits_app/core/services/shared_preferences_singleton.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/auth/presentation/views/login_view.dart';
import 'package:fruits_app/features/on_bording/presentation/views/widgets/on_bording_page_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({super.key});

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  @override
late  PageController pageController;
var currentPage=0;
@override
  void initState(){
  pageController=PageController();
  super.initState();
  pageController.addListener((){
    currentPage=pageController.page!.round();
    setState(() {
      
    });
  });

}
@override
  void dispose(){
    pageController.dispose();
  super.dispose();
}
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBordingPageView(pageController: pageController,)),
        DotsIndicator(
          dotsCount: 2,
          decorator:DotsDecorator (activeColor:AppColors.primaryColor ,
          color:currentPage==1?AppColors.primaryColor: AppColors.green),
        
        ),
        SizedBox(height: 29,),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currentPage==1?true:false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(text: 'ابدأ الان', onPressed: () {
            SharedPreferencesSingleton.setBool(kisOnBordingViewSeen, true);
            Navigator.pushReplacementNamed(context, LoginView.routeName);

              },),
          
          ),
        ),
        SizedBox(height: 43,)
      ],
    );
  }
}