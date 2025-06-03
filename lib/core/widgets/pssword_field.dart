// core/widgets/pssword_field.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_app/features/auth/presentation/views/widgets/custom_text_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key, this.onSaved,
  });
final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {

  bool obscureText=true;
    @override
  Widget build(BuildContext context) {
    return CustomTextField(
      obscureText:obscureText ,
     onSaved: widget.onSaved,
    icon: GestureDetector(
      onTap: () {
        obscureText=!obscureText;
        setState(() {
          
        });
      },
      child: Icon(
  obscureText ? Icons.visibility_off :Icons.remove_red_eye ,
  color: Color(0xffC9CECF),
),
      ),
  
     hintText: 'كلمة المرور', textInputType: TextInputType.visiblePassword);
  }
}