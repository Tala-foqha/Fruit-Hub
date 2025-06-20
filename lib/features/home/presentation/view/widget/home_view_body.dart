// features/home/presentation/view/widget/home_view_body.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/fruit_item.dart';
import 'package:fruits_app/core/widgets/search_text_field.dart';
import 'package:fruits_app/features/home/presentation/view/widget/best_seller_header.dart';
import 'package:fruits_app/features/home/presentation/view/widget/best_sellin_grid_view.dart';
import 'package:fruits_app/features/home/presentation/view/widget/custom_home_app_bar.dart';
import 'package:fruits_app/features/home/presentation/view/widget/featured_item.dart';
import 'package:fruits_app/features/home/presentation/view/widget/featured_list.dart';

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
             FeaturedList(),
             SizedBox(height: 12,),
             BestSellerHeader(),
             SizedBox(height: 8,)
            
            ],
          )),

          BestSellinGridView(),
        ],
         
      ),
    );
  }
}