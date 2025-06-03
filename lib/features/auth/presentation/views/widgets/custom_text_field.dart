// features/auth/presentation/views/widgets/custom_text_field.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, required this.textInputType,  this.icon, this.onSaved});
 final String hintText;
 final TextInputType textInputType;
 final Widget? icon;
 final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved ,
      validator: (value) {
        if(value==null||value.isEmpty){
          return 'هذا الحقل مطلوب';
        }
        return null;
      } ,
      keyboardType:textInputType ,
    decoration: InputDecoration(
      suffixIcon: icon,
      hintText: hintText,
   hintStyle: AppStyles.bold13.copyWith(
    color: Color(0xff949D9E)
   ),
      filled: true,
      fillColor: Color(0xFFF9FAFA),
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
       color: Color(0xFFE6E9E9)
    )
  );
}