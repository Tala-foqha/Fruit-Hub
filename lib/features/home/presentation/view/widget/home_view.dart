// features/home/presentation/view/widget/home_view.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/cubits/products/products_cubit.dart';
import 'package:fruits_app/core/repos/products_repo/products_repo.dart';
import 'package:fruits_app/core/services/get_it_services.dart';
import 'package:fruits_app/core/widgets/fruit_item.dart';
import 'package:fruits_app/core/widgets/search_text_field.dart';
import 'package:fruits_app/features/home/presentation/view/widget/best_seller_header.dart';
import 'package:fruits_app/features/home/presentation/view/widget/best_sellin_grid_view.dart';
import 'package:fruits_app/features/home/presentation/view/widget/custom_home_app_bar.dart';
import 'package:fruits_app/features/home/presentation/view/widget/featured_item.dart';
import 'package:fruits_app/features/home/presentation/view/widget/featured_list.dart';
import 'package:fruits_app/features/home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(
        getIt.get<ProductsRepo>()
      ),
      child: HomeViewBody(),
    );
  }
}
