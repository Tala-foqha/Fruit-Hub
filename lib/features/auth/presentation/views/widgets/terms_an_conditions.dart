// features/auth/presentation/views/widgets/terms_an_conditions.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/custom_check_box.dart';

class TermsAnConditions extends StatefulWidget {
  const TermsAnConditions({super.key});

  @override
  State<TermsAnConditions> createState() => _TermsAnConditionsState();
}

class _TermsAnConditionsState extends State<TermsAnConditions> {
  bool isTermsAccepted=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       CustomCheckBox(isChecked:isTermsAccepted ,
       onChecked: (value) {
        isTermsAccepted=value;
        setState(() {
        });
         
       },
       ),
       SizedBox(width: 16,),
        Expanded(
          child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                  TextSpan(
                    text: 'الشروط والأحكام',
                    style: AppStyles.semiBold13.copyWith(
                      color: AppColors.LLightprimaryColor,
                    ),
                  ),
                    TextSpan(
                    text: ' ',
                    style: AppStyles.semiBold13,
                  ),
                  TextSpan(
                    text: 'الخاصة',
                    style: AppStyles.semiBold13.copyWith(
                      color: AppColors.LLightprimaryColor,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: AppStyles.semiBold16,
                  ),
                  TextSpan(
                    text: 'بنا',
                    style: AppStyles.semiBold13
                        .copyWith(color: AppColors.LLightprimaryColor),
                  ),
                ],
              ),
              textAlign: TextAlign.right,
            ),
        ),
        
      ],
    );
  }
}