// features/home/presentation/view/widget/custom_bottom_navigation_bar.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/domain/entitis/bottom_navigation_bar_entity.dart';
import 'package:fruits_app/features/home/presentation/view/widget/navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int isSelected=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 375,
      decoration:
       ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30,),
            topRight:  Radius.circular(30,),
          )
        ),
        shadows: [
          BoxShadow(
            color: Color(0xff0000001A),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0
          )
        ]
        
      ),
      child:Row(
        children:getBottomNavigationItem.asMap().entries.map((e){
          var index=e.key;
          var entity=e.value;
return Expanded(
  flex: index==isSelected?3:2,
  child: GestureDetector(
    onTap: () {
      setState(() {
        isSelected=index;
      });
    },
    child: NavigationBarItem(isSelected: index==isSelected, barEntity: entity)),
);
        }).toList(),
      ) ,
    );
  }
}






