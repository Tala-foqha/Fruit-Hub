// features/home/presentation/view/widget/custom_home_app_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing:
      Container(
       
       padding: EdgeInsets.all(12),
        decoration: ShapeDecoration(
          shape: OvalBorder(),

          color: Color(0xffEEF8ED)
        ),
        child: 
      SvgPicture.asset('assets/images/notification.svg'),),
      leading: Image.asset('assets/images/Ellipse 11.png'),
      title: Text('صباح الخير !..',style: AppStyles.regular16.copyWith(
        color: Color(0xff949D9E)
      ),
      textAlign: TextAlign.right,),
      subtitle: Text('أحمد مصطفي',style: AppStyles.bold16.copyWith(
        color: Color(0xff0C0D0D)
      ),),

    );
  }
}