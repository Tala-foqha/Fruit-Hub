// features/home/presentation/view/widget/featured_list.dart
import 'package:flutter/cupertino.dart';
import 'package:fruits_app/features/home/presentation/view/widget/featured_item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FeaturedItem(),
          );
        })
      ),
    );
  }
}