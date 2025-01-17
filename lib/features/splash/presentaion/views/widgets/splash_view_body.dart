import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/core/services/shared_preferance_singlaion.dart';
import 'package:fruit_app/features/auth/presentaion/views/sign_in_view.dart';
import 'package:fruit_app/features/onBoarding/presentaion/view/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset('assets/images/plant.svg')),
        SvgPicture.asset('assets/images/fruitlogo.svg'),
        SvgPicture.asset(
          'assets/images/circle.svg',
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      if (Prefs.getBool('checkOnboarding') == false) {
        Navigator.of(context).pushReplacementNamed(OnboardingView.routName);
      } else {
        Navigator.of(context).pushReplacementNamed(SignInView.routName);
      }
    });
  }
}
