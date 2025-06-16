// features/home/presentation/view/widget/navigation_bar_item.dart
import 'package:flutter/cupertino.dart';
import 'package:fruits_app/features/home/domain/entitis/bottom_navigation_bar_entity.dart';
import 'package:fruits_app/features/home/presentation/view/widget/active_item.dart';
import 'package:fruits_app/features/home/presentation/view/widget/in_active_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.isSelected, required this.barEntity, });
final bool isSelected;
final BottomNavigationBarEntity barEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected?ActiveItem(image: barEntity.activeImage,name: barEntity.name,):InActiveItem(image: barEntity.inActiveImage);
  }
}