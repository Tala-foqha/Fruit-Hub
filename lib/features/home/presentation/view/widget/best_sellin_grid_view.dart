// features/home/presentation/view/widget/best_sellin_grid_view.dart
import 'package:flutter/cupertino.dart';
import 'package:fruits_app/core/widgets/fruit_item.dart';

class BestSellinGridView extends StatelessWidget {
  const BestSellinGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 8,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        
        childAspectRatio: 163/240,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16
        ), 
      itemBuilder: (context,index){
      return FruitItem();
    });
  }
}