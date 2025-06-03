// features/auth/presentation/views/widgets/signup_view_body.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/auth/presentation/manager/cubits/signup/signup_cubit.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/terms_an_conditions.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState>formKey=GlobalKey<FormState>();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  late String email,userName,password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
            CustomTextField(
              onSaved: (value) {
                userName!=value;
                
              },
              hintText: 'الاسم كامل', textInputType: TextInputType.name)  ,
            SizedBox(height: 16,),
             CustomTextField(
              onSaved: (value) =>
              email!=value ,
              hintText: 'البريد الإلكتروني', textInputType: TextInputType.emailAddress),
                       SizedBox(height: 16,),
          
                     CustomTextField(
                      onSaved: (value) {
                        password!=value;
                        
                      },
                     icon: Icon(Icons.remove_red_eye,
                   color: Color(0xffC9CECF)),
                      hintText: 'كلمة المرور', textInputType: TextInputType.visiblePassword),
                      SizedBox(height: 16,),
                      TermsAnConditions(),
                      SizedBox(height: 30,),
                      CustomButton(
                        text: 'إنشاء حساب جديد', onPressed: () {
                          if(formKey.currentState!.validate()){
                            formKey.currentState!.save();
                            context.read<SignupCubit>().createUserWithEmailAndPassword(email, password, userName) ; 
                          
                          }else{
                            setState(() {
                              autovalidateMode=AutovalidateMode.always;
                            });
                          }
                        }),
                      SizedBox(height: 26,),
                      HaveAnAccountWidget()
          
              
            ],
          ),
        ),
      ),
    );
  }
}