// features/home/presentation/view/widget/featured_item_button.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton({super.key, this.onPressed});
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    
      height: 32,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4)
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: onPressed,
      
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 4),
        child: FittedBox(child: Text('تسوق الان',style: AppStyles.bold13.copyWith(color: Color(0xff1B5E37)),)))),
    );
  }
}