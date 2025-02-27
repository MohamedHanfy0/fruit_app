import 'package:flutter/material.dart';
import 'package:fruit_app/features/auth/presentaion/views/sign_in_view.dart';
import 'package:fruit_app/features/auth/presentaion/views/signup_view.dart';
import 'package:fruit_app/features/onBoarding/presentaion/view/onboarding_view.dart';
import 'package:fruit_app/features/splash/presentaion/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case SplashView.routName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnboardingView.routName:
      return MaterialPageRoute(builder: (context) => OnboardingView());
    case SignInView.routName:
      return MaterialPageRoute(builder: (context) => SignInView());
    case SignupView.routName:
      return MaterialPageRoute(builder: (context) => SignupView());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(),
      );
  }
}
