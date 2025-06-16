// features/home/presentation/view/widget/active_item.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.name});
final String image;
final String name;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 16),
        // width: 78,
        // height: 30,
        
        decoration: ShapeDecoration(
          color: Color(0xffEEEEEE),
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(30)
          )
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius:   BorderRadius.circular(30)
                ),
                child: Center(child: SvgPicture.asset(image)),
              ),
             SizedBox(width: 4,) ,
             Text(name,style: AppStyles.semiBold11.copyWith(
              color: AppColors.primaryColor
             ),),
      
      
      
            ],
          
          ),
      
      ),
    );
  }
}