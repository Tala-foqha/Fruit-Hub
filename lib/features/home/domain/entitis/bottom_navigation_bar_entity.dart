// features/home/domain/entitis/bottom_navigation_bar_entity.dart
import 'package:fruits_app/core/utils/app_images.dart';

class BottomNavigationBarEntity {
 final String activeImage,inActiveImage;
  final String name;

  BottomNavigationBarEntity({required this.activeImage, required this.inActiveImage, required this.name});


}
List<BottomNavigationBarEntity>getBottomNavigationItem=[
BottomNavigationBarEntity(activeImage: Assets.resourceImagesActiveHome,
 inActiveImage: Assets.resourceImagesHome, 
 name: 'الرئيسة'),
 
 BottomNavigationBarEntity(
  activeImage: Assets.resourceImagesActiveApp, 
  inActiveImage: Assets.resourceImagesElement3,
   name: 'المنتجات'),


   BottomNavigationBarEntity(
    activeImage: Assets.resourceImagesActiveShoppingCart, 
   inActiveImage: Assets.resourceImagesShoppingCart,
    name: 'سلة التسوق'),


    BottomNavigationBarEntity(
      activeImage: Assets.resourceImagesActiveUser,
     inActiveImage: Assets.resourceImagesUser,
      name: 'حسابي')
];