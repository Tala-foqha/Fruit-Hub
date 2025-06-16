// core/widgets/fruit_item.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: ShapeDecoration(
        color: Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(4) )
      ),
      child: Stack(
        children: [

          Positioned(
            // top: 0,
            // right: 0,
            child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline))),
            Positioned.fill(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image.asset('assets/images/test.png'),
                  SizedBox(height: 24,),
                  ListTile(
                    trailing:  CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            child: Icon(Icons.add,
            color:Colors.white ,),

          ),
                    title: Text('بطيخ',style: AppStyles.semiBold13.copyWith(
                      color: Color(0xff0C0D0D),),),
                       subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '20 جنية',
                          style: AppStyles.bold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: AppStyles.bold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: AppStyles.semiBold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: 'كيلو',
                          style: AppStyles.semiBold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.right,
                  ),
          ),
         
          ]),
          
                  )
                  
                ],
              ),
            );
      
  }
}