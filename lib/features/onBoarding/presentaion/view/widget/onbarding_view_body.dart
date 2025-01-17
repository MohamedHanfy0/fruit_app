import 'package:flutter/material.dart';
import 'package:fruit_app/core/services/shared_preferance_singlaion.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/constans.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/features/auth/presentaion/views/sign_in_view.dart';
import 'package:fruit_app/features/onBoarding/presentaion/view/widget/on_boarding_page_view.dart';

class OnbardingViewBody extends StatefulWidget {
  const OnbardingViewBody({super.key});

  @override
  State<OnbardingViewBody> createState() => _OnbardingViewBodyState();
}

class _OnbardingViewBodyState extends State<OnbardingViewBody> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBoardingPageView(
          pageController: pageController,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.primaryColor),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: currentPage == 1
                      ? AppColors.primaryColor.withAlpha(500)
                      : AppColors.primaryColor.withAlpha(70)),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
          margin: EdgeInsets.only(top: 29, bottom: 43),
          child: Visibility(
            visible: currentPage == 1 ? true : false,
            child: CustomButton(
                onPressed: () {
                  Prefs.setBool('checkOnboarding', true);
                  Navigator.of(context)
                      .pushReplacementNamed(SignInView.routName);
                },
                text: "ابدأ الان"),
          ),
        ),
      ],
    );
  }
}
