// features/home/presentation/view/widget/home_view_body.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/search_text_field.dart';
import 'package:fruits_app/features/home/presentation/view/widget/custom_home_app_bar.dart';
import 'package:fruits_app/features/home/presentation/view/widget/featured_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        
        slivers: [
         
          SliverToBoxAdapter(child: Column(
            children: [
              CustomHomeAppBar(),
             SizedBox(height: 16,),
             SearchTextField(),
           SizedBox(height:12 ,),
             FeaturedItem()
            ],
          ))
        ],
      ),
    );
  }
}