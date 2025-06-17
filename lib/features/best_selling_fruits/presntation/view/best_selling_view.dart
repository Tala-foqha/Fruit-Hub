// features/best_selling_fruits/presntation/view/best_selling_view.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:fruits_app/core/widgets/notification_widget.dart';
import 'package:fruits_app/features/best_selling_fruits/presntation/view/widget/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
static const routeName='best-selling';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: NotificationWidget(),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text('الأكثر مبيعًا',
          style: AppStyles.bold19,
          textAlign: TextAlign.center,),
        ),

      ),
      body: BestSellingViewBody(),
    );
  }
}