// features/home/presentation/view/widget/custom_home_app_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/helper_functions/get_user.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing:
      NotificationWidget(),
      leading: Image.asset('assets/images/Ellipse.png'),
      title: Text('صباح الخير !..',style: AppStyles.regular16.copyWith(
        color: Color(0xff949D9E)
      ),
      textAlign: TextAlign.right,),
      subtitle: Text(getUser().name ,style: AppStyles.bold16.copyWith(
        color: Color(0xff0C0D0D)
      ),),

    );
  }
}

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     
     padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: OvalBorder(),
    
        color: Color(0xffEEF8ED)
      ),
      child: 
    SvgPicture.asset('assets/images/notification.svg'),);
  }
}