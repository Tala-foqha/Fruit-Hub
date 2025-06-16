// core/widgets/notification_widget.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

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