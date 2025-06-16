// features/home/presentation/view/widget/best_seller_header.dart
import 'package:flutter/cupertino.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/features/best_selling_fruits/presntation/view/best_selling_view.dart';

class BestSellerHeader extends StatelessWidget {
  const BestSellerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, BestSellingView.routeName);
        },
         child: Text('الأكثر مبيعًا',
         style: AppStyles.bold16.copyWith(
          color: Color(0xff0C0D0D)
         ),),
       ) ,
       Spacer(),
       Text('المزيد',style: AppStyles.regular13.copyWith(
        color: Color(0xff949D9E)
       ),)
      ],
    );
  }
}