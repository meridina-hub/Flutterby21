import 'package:flutter/material.dart';
import 'package:news_app_ui/constants/app_colors/app_bar_bgc.dart';
import 'package:news_app_ui/constants/app_colors/icons_color.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 40,
        backgroundColor: AppColors.orangeColor,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: IconColors.searchColor,
            size: 30,
          ),
        ));
  }
}
