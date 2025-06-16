// core/widgets/search_text_field.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      
      keyboardType:TextInputType.text ,
    decoration: InputDecoration(
      suffixIcon: SizedBox(
        width: 20,
        child: Center(child: SvgPicture.asset('assets/images/setting-4.svg'))),
      hintText: 'ابحث عن.......',
      prefixIcon: SizedBox(
        width: 20,
        child: Center(child: SvgPicture.asset('assets/images/search-normal.svg'))),
   hintStyle: AppStyles.regular13.copyWith(
    color: Color(0xff949D9E)
   ),
      filled: true,
      fillColor: Colors.white,
      border:buildBorder(),
      enabledBorder: buildBorder(),
      focusedBorder: buildBorder(),




    ),  
    );
  }

}
 
 OutlineInputBorder buildBorder(){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(
      width:1 ,
       color: Colors.white
    )
  );
}