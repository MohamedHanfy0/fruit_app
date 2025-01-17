import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/helper_funcions/on_generate_rouats.dart';
import 'package:fruit_app/core/services/custom_bloc_observer.dart';
import 'package:fruit_app/core/services/get_it_service.dart';
import 'package:fruit_app/core/services/shared_preferance_singlaion.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/features/splash/presentaion/views/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';

//
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp();
  await Prefs.init();
  setupGetIt();
  runApp(FruitApp());
}

class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Cairo',
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
          )),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routName,
    );
  }
}
