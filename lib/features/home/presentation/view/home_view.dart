// features/home/presentation/view/home_view.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/presentation/view/widget/custom_bottom_navigation_bar.dart';
import 'package:fruits_app/features/home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
static const routeName='home-view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}