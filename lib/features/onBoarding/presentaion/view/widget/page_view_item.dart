import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/core/services/shared_preferance_singlaion.dart';
import 'package:fruit_app/core/utils/app_styles.dart';
import 'package:fruit_app/features/auth/presentaion/views/sign_in_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisbilty});
  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisbilty;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.topRight,
                  child: Visibility(
                      visible: isVisbilty,
                      child: GestureDetector(
                        onTap: () {
                          Prefs.setBool('checkOnboarding', true);
                          Navigator.of(context)
                              .pushReplacementNamed(SignInView.routName);
                        },
                        child: Text(
                          'تخط',
                          style: AppStyles.semiBold13
                              .copyWith(color: Color(0xff949d9e)),
                        ),
                      )))
            ],
          ),
        ),
        Container(margin: EdgeInsets.only(top: 64, bottom: 24), child: title),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppStyles.semiBold13.copyWith(color: Color(0xff949d9e)),
          ),
        ),
      ],
    );
  }
}
