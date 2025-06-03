// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_app/core/helper_functions/on_generate_route.dart';
import 'package:fruits_app/core/services/custom_block_observer.dart';
import 'package:fruits_app/core/services/get_it_services.dart';
import 'package:fruits_app/core/services/shared_preferences_singleton.dart';
import 'package:fruits_app/features/splash/presentation/views/splash_view.dart';
import 'package:fruits_app/generated/l10n.dart';

void main()async {

  WidgetsFlutterBinding.ensureInitialized();
 await SharedPreferencesSingleton.init();
  Bloc.observer=CustomBlocObserver();
 setup();
  runApp(const FruitHub());
}
class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        
      ],
           supportedLocales: S.delegate.supportedLocales,
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
     onGenerateRoute: onGenerateRoute,
     initialRoute: SplashView.routeName,
    );
  }
}