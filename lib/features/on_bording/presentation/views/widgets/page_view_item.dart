// features/on_bording/presentation/views/widgets/page_view_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/auth/presentation/views/signin_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.image, required this.backgroundImage, required this.subtitle, required this.title,required this.isVisable});
final String image,backgroundImage;
final String subtitle;
final Widget title;
final bool isVisable;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*.5,
          child: Stack(
            children: [
          Positioned.fill(child: SvgPicture.asset(backgroundImage,fit: BoxFit.fill,)
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(image),
            )),
            Visibility(
              visible: isVisable,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, SigninView.routeName);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('تخط',style: AppStyles.regular13.copyWith(
                    color: Color(0xff949D9E)
                  ),)),
              ),
            )
          
          
            ],
          ),

        ),
        SizedBox(height: 64,),
        title,
        SizedBox(height: 24,),

        Padding(
          padding:EdgeInsets.symmetric(horizontal: 37) ,
          child: Text(subtitle,
          style: AppStyles.semiBold13.copyWith(
            color: Color(0xff4E5556)
          ),
          
          textAlign: TextAlign.center,))
      ],
    );
  }
}