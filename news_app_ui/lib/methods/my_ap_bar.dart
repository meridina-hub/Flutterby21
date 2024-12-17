import 'package:flutter/material.dart';
import 'package:news_app_ui/constants/app_colors/app_bar_bgc.dart';
import 'package:news_app_ui/constants/app_colors/icons_color.dart';
import 'package:news_app_ui/constants/text_styles/text_styles.dart';

AppBar myAppBar() {
  return AppBar(
    backgroundColor: appbarcolor,
    title: const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'News Agregator',
        style: TextStyles.titleStyle,
      ),
    ),
    actions: const [
      Icon(
        Icons.more_vert,
        color: iconColor,
      )
    ],
  );
}
