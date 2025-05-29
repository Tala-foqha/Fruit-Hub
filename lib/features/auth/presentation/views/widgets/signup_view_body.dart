// features/auth/presentation/views/widgets/signup_view_body.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/terms_an_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
          CustomTextField(hintText: 'الاسم كامل', textInputType: TextInputType.name)  ,
          SizedBox(height: 16,),
           CustomTextField(hintText: 'البريد الإلكتروني', textInputType: TextInputType.emailAddress),
                     SizedBox(height: 16,),

                   CustomTextField(
                   icon: Icon(Icons.remove_red_eye,
                 color: Color(0xffC9CECF)),
                    hintText: 'كلمة المرور', textInputType: TextInputType.visiblePassword),
                    SizedBox(height: 16,),
                    TermsAnConditions(),
                    SizedBox(height: 30,),
                    CustomButton(text: 'إنشاء حساب جديد', onPressed: () {}),
                    SizedBox(height: 26,),
                    HaveAnAccountWidget()
        
            
          ],
        ),
      ),
    );
  }
}