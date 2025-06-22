// features/home/presentation/view/widget/home_view_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/cubits/products/products_cubit.dart';
import 'package:fruits_app/core/widgets/search_text_field.dart';
import 'package:fruits_app/features/home/presentation/view/widget/best_seller_header.dart' show BestSellerHeader;
import 'package:fruits_app/features/home/presentation/view/widget/best_sellin_grid_view.dart';
import 'package:fruits_app/features/home/presentation/view/widget/custom_home_app_bar.dart';
import 'package:fruits_app/features/home/presentation/view/widget/featured_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState(){

//context.read<ProductsCubit>().getProducts();
context.read<ProductsCubit>().getBestSellingProducts();
  }
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