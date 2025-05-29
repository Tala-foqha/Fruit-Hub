// core/widgets/custom_button.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
final String text;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          backgroundColor: AppColors.primaryColor,
        ),
        onPressed: onPressed,
      
      child: Text(text,style: AppStyles.bold16.copyWith(color: Colors.white),)),
    );
  }
}