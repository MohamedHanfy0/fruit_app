import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_styles.dart';
import 'package:fruit_app/features/onBoarding/presentaion/view/widget/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  // ignore: prefer_typing_uninitialized_variables
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: pageController,
        children: [
          PageViewItem(
            image: 'assets/images/image_item1.svg',
            backgroundImage: 'assets/images/background_item1.svg',
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
           
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fruit',
                  style: AppStyles.semibold23
                      .copyWith(color: AppColors.secendColor),
                ),
                Text('HUB',
                    style: AppStyles.semibold23
                        .copyWith(color: AppColors.primaryColor)),
                Text(
                  '  مرحبًا بك في ',
                  style: AppStyles.semibold23.copyWith(color: Colors.black),
                )
              ],
            ),
            isVisbilty: true,
          ),
          PageViewItem(
            image: 'assets/images/image_item2.svg',
            backgroundImage: 'assets/images/background_item2.svg',
            subtitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Text(
              'ابحث وتسوق',
              style: AppStyles.semibold23.copyWith(color: Colors.black),
            ),
            isVisbilty: false,
          ),
        ],
      ),
    );
  }
}
