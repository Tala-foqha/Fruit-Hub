// features/auth/presentation/views/widgets/signin_view_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/auth/presentation/manager/cubits/signin/signin_cubit.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/donot_have_account_widgets.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/social_login_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  late String email,password;
 AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  final GlobalKey<FormState>formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16 ),
        child: Form(
          key: formKey,
          autovalidateMode:autovalidateMode ,
          child: Column(
            children: [
              SizedBox(height: 24,),
              CustomTextField(
                onSaved: (value){
                  email=value!;
                },
                hintText: 'البريد الإلكتروني', textInputType: TextInputType.emailAddress,
          
              ),
              SizedBox(height: 16,),
          
              CustomTextField(
                onSaved: (value) => password=value!,
                hintText: 'كلمة المرور ',
                 textInputType: TextInputType.visiblePassword,
                 icon: Icon(Icons.remove_red_eye,
                 color: Color(0xffC9CECF),),
          
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    
                  
                    style:AppStyles.semiBold13.copyWith(
                    color: AppColors.LLightprimaryColor
                  ) ,),
                ],
              ),
              SizedBox(height: 33,),
              CustomButton(text: 'تسجيل دخول', onPressed: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                  context.read<SigninCubit>().signin(email, password);
                }else{
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {
                    
                  });
                }
              }),
              SizedBox(height: 33,),
              DonotHaveAccountWidget(),
              SizedBox(height: 41,),
          
          OrDivider(),
          SizedBox(height: 16,),
          SocialLoginButton(image:Assets.resourceImagesGoogleIcon, 
          title: 'تسجيل بواسطة جوجل', onPressed: () {  
            context.read<SigninCubit>().signinWithGoogle();
          },),
           SizedBox(height: 16,),
          SocialLoginButton(image:Assets.resourceImagesAppleIcon, 
          title:  'تسجيل بواسطة أبل', onPressed: () {  },),
           SizedBox(height: 16,),
          SocialLoginButton(image:Assets.resourceImagesFacebookIcon, 
          title:  'تسجيل بواسطة فيسبوك', onPressed: () {
           // context.read<SigninCubit>().signinWithFacebook();
            },),
                
          
            ],
          ),
        ),
      ),
    );
  }
}


class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(
        child: Divider(
          color: Color(0xffDDDFDF),
        ),
      ),
          SizedBox(width: 18,),
          Text('أو',style: AppStyles.semiBold16,
          textAlign: TextAlign.center,),
            SizedBox(width: 18,),
  Expanded(
        child: Divider(
          color: Color(0xffDDDFDF),
        ),
      ),
      ],
    );
  }
}