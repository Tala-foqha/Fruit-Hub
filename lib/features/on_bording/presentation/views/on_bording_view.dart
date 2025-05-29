// features/on_bording/presentation/views/on_bording_view.dart
import 'package:flutter/material.dart';
import 'package:fruits_app/features/on_bording/presentation/views/widgets/on_bording_view_body.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});
static const routeName='OnBording';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: OnBordingViewBody()) ,
    );
  }
}