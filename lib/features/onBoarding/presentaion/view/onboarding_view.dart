import 'package:flutter/material.dart';
import 'package:fruit_app/features/onBoarding/presentaion/view/widget/onbarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  static const String routName = 'onbarding';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OnbardingViewBody(),
      ),
    );
  }
}
