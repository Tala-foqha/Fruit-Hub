// features/on_bording/presentation/views/widgets/on_bording_page_view.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/on_bording/presentation/views/widgets/page_view_item.dart';

class OnBordingPageView extends StatelessWidget {
  const OnBordingPageView({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisable:(pageController.hasClients?pageController.page!.round(): 0)==0,
          image: Assets.resourceImagesPageViewItem1Image,
         backgroundImage: Assets.resourceImagesPageViewItem1Background, 
         subtitle: "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
            Text('مرحبًا بك في',style:AppStyles.bold23,),
            Text(' HUB',style: AppStyles.bold23.copyWith(color: AppColors.secondaryColor),) , 
            Text('Fruit',style: AppStyles.bold23.copyWith(color: AppColors.primaryColor),)


          ],)),
           PageViewItem(
            isVisable: (pageController.hasClients?pageController.page!.round(): 0)==0, 
            image: Assets.resourceImagesPageViewItem2Image,
         backgroundImage: Assets.resourceImagesPageViewItem2Background, 
         subtitle: "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title:Text('ابحث وتسوق',style: AppStyles.bold23,))

      ],
    );
  }
}