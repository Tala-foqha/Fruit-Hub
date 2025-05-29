// features/auth/presentation/views/login_view.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const routeName='LogIn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar( context,title: 'تسجيل دخول'),
    body:LoginViewBody() ,
    );
  }
}
AppBar buildAppBar(BuildContext context,{required String title}){
  return 
     AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
          centerTitle: true,
          title: Text( title,style:AppStyles.bold19 ,textAlign: TextAlign.center,),
    
        
  );
}