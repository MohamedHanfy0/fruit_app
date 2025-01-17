import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_styles.dart';

AppBar buildAppBar(
  context, {
  required String title,
}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: AppStyles.bodl19,
    ),
    leading: SizedBox(),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              textDirection: TextDirection.rtl,
            )),
      )
    ],
  );
}
