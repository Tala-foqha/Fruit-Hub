// features/auth/presentation/views/widgets/have_an_account.dart
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

import '../../../../../core/utils/app_colors.dart';
import '../signup_view.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'تمتلك حساب بالفعل ؟',
            style: AppStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            text: ' ',
            style: AppStyles.semiBold16.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
            text: 'تسجيل الدخول',
            style:
                AppStyles.semiBold16.copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}